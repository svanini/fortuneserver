HEADERS       = server.h \
                bonjourserviceregister.h
SOURCES       = server.cpp \
                main.cpp \
                bonjourserviceregister.cpp
QT           += network
QT           += widgets

!mac:x11:LIBS+=-ldns_sd

win32 {
    LIBS+=-L"C:/Program Files/Bonjour SDK/Lib/Win32" -ldnssd
    # Add your path to bonjour here.
    LIBPATH=C:/Temp/mDNSResponder-107.6/mDNSWindows/DLL/Debug
    INCLUDEPATH += c:/Temp/mDNSResponder-107.6/mDNSShared
    INCLUDEPATH += "C:/Program Files/Bonjour SDK/Include"
}

unix:LIBS+=/usr/lib/x86_64-linux-gnu/libdns_sd.so
HEADERS += dns_sd.h
