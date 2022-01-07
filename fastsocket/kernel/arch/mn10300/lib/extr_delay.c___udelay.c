
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MN10300_TSCCLK ;
 long TMTSCBC ;
 long __muldiv64u (unsigned long,int ,int) ;

void __udelay(unsigned long usecs)
{
 signed long ioclk, stop;


 stop = __muldiv64u(usecs, MN10300_TSCCLK, 1000000);
 stop = TMTSCBC - stop;

 do {
  ioclk = TMTSCBC;
 } while (stop < ioclk);
}
