
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
typedef int byte ;
typedef int LogInfo ;


 int PUT_WORD (int*,int) ;
 int xdi_xlog (int*,int,int) ;
 int xdi_xlog_sec ;

__attribute__((used)) static void xdi_xlog_rc_event (byte Adapter,
                               byte Id, byte Ch, byte Rc, byte cb, byte type) {
}
