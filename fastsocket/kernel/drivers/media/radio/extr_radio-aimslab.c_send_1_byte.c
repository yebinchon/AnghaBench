
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtrack {scalar_t__ curvol; int io; scalar_t__ muted; } ;


 int outb_p (int,int ) ;
 int sleep_delay (int) ;

__attribute__((used)) static void send_1_byte(struct rtrack *rt)
{
 if (rt->curvol == 0 || rt->muted) {
  outb_p(128+64+16+4 +1, rt->io);
  outb_p(128+64+16+4+2+1, rt->io);
 }
 else {
  outb_p(128+64+16+8+4 +1, rt->io);
  outb_p(128+64+16+8+4+2+1, rt->io);
 }

 sleep_delay(1000);
}
