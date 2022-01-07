
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int saved_r0; int saved_r2; } ;
typedef TYPE_1__ PIA ;


 int CCP (int) ;
 int P1 ;
 int w0 (int) ;
 int w2 (int ) ;
 int w3 (int) ;

__attribute__((used)) static void on26_disconnect ( PIA *pi )

{ if (pi->mode >= 2) { w3(4); w3(4); w3(4); w3(4); }
               else { w0(4); P1; w0(4); P1; }
 CCP(0x30);
        w0(pi->saved_r0);
        w2(pi->saved_r2);
}
