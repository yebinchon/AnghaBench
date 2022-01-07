
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saved_r2; int saved_r0; } ;
typedef TYPE_1__ PIA ;


 int CMD (int) ;
 int w0 (int ) ;
 int w2 (int ) ;

__attribute__((used)) static void friq_disconnect ( PIA *pi )

{ CMD(0x20);
 w0(pi->saved_r0);
        w2(pi->saved_r2);
}
