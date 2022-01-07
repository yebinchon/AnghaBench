
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saved_r2; int saved_r0; } ;
typedef TYPE_1__ PIA ;


 int r0 () ;
 int r2 () ;
 int w0 (int ) ;
 int w2 (int) ;

__attribute__((used)) static void ktti_connect ( PIA *pi )

{ pi->saved_r0 = r0();
        pi->saved_r2 = r2();
 w2(0xb); w2(0xa); w0(0); w2(3); w2(6);
}
