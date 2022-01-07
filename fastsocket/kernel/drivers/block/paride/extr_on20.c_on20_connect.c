
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; int saved_r2; int saved_r0; } ;
typedef TYPE_1__ PIA ;


 int op (int) ;
 int r0 () ;
 int r2 () ;
 int vl (int) ;
 int w0 (int ) ;
 int w2 (int) ;

__attribute__((used)) static void on20_connect ( PIA *pi)

{ pi->saved_r0 = r0();
        pi->saved_r2 = r2();

 w2(4);w0(0);w2(0xc);w2(4);w2(6);w2(4);w2(6);w2(4);
 if (pi->mode) { op(2); vl(8); op(2); vl(9); }
        else { op(2); vl(0); op(2); vl(8); }
}
