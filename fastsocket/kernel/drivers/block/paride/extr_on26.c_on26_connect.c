
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; int saved_r2; int saved_r0; } ;
typedef TYPE_1__ PIA ;


 int CCP (int) ;
 int P1 ;
 int P2 ;
 int r0 () ;
 int r2 () ;
 int w0 (int) ;

__attribute__((used)) static void on26_connect ( PIA *pi )

{ int x;

 pi->saved_r0 = r0();
        pi->saved_r2 = r2();

        CCP(0x20);
 x = 8; if (pi->mode) x = 9;

 w0(2); P1; w0(8); P2;
 w0(2); P1; w0(x); P2;
}
