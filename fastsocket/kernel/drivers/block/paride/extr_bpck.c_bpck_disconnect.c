
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int saved_r0; } ;
typedef TYPE_1__ PIA ;


 int t2 (int) ;
 int w0 (int ) ;
 int w2 (int) ;

__attribute__((used)) static void bpck_disconnect ( PIA *pi )

{ w0(0);
 if (pi->mode >= 2) { w2(9); w2(0); } else t2(2);
 w2(0x4c); w0(pi->saved_r0);
}
