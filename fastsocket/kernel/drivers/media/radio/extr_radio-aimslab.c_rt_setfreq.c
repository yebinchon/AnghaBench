
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtrack {unsigned long curfreq; scalar_t__ curvol; int lock; int io; scalar_t__ muted; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,int ) ;
 int send_0_byte (struct rtrack*) ;
 int send_1_byte (struct rtrack*) ;

__attribute__((used)) static int rt_setfreq(struct rtrack *rt, unsigned long freq)
{
 int i;

 mutex_lock(&rt->lock);

 rt->curfreq = freq;



 freq += 171200;
 freq /= 800;

 send_0_byte(rt);

 for (i = 0; i < 13; i++)
  if (freq & (1 << i))
   send_1_byte(rt);
  else
   send_0_byte(rt);

 send_0_byte(rt);
 send_0_byte(rt);

 send_0_byte(rt);
 send_0_byte(rt);
 send_0_byte(rt);
 send_0_byte(rt);

 send_0_byte(rt);
 send_1_byte(rt);
 send_0_byte(rt);
 send_1_byte(rt);

 if (rt->curvol == 0 || rt->muted)
  outb(0xd0, rt->io);
 else
  outb(0xd8, rt->io);

 mutex_unlock(&rt->lock);

 return 0;
}
