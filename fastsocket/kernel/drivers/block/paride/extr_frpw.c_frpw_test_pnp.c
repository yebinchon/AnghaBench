
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int delay; int saved_r0; int saved_r2; } ;
typedef TYPE_1__ PIA ;


 int mdelay (int) ;
 int r0 () ;
 int r1 () ;
 int r2 () ;
 int udelay (int) ;
 int w0 (int) ;
 int w2 (int) ;

__attribute__((used)) static int frpw_test_pnp ( PIA *pi )



{ int olddelay, a, b;






 olddelay = pi->delay;
 pi->delay = 10;

 pi->saved_r0 = r0();
        pi->saved_r2 = r2();

 w2(4); w0(4); w2(6); w2(7);
 a = r1() & 0xff; w2(4); b = r1() & 0xff;
 w2(0xc); w2(0xe); w2(4);

 pi->delay = olddelay;
        w0(pi->saved_r0);
        w2(pi->saved_r2);

 return ((~a&0x40) && (b&0x40));
}
