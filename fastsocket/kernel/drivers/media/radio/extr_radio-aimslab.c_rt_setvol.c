
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtrack {int curvol; int lock; scalar_t__ muted; int io; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,int ) ;
 int rt_decvol (struct rtrack*) ;
 int rt_incvol (struct rtrack*) ;
 int sleep_delay (int) ;

__attribute__((used)) static int rt_setvol(struct rtrack *rt, int vol)
{
 int i;

 mutex_lock(&rt->lock);

 if (vol == rt->curvol) {
  if (rt->muted) {
   rt->muted = 0;
   outb(0xd8, rt->io);
  }
  mutex_unlock(&rt->lock);
  return 0;
 }

 if (vol == 0) {
  outb(0x48, rt->io);
  sleep_delay(2000000);
  outb(0xd0, rt->io);
  rt->curvol = 0;
  mutex_unlock(&rt->lock);
  return 0;
 }

 rt->muted = 0;
 if (vol > rt->curvol)
  for (i = rt->curvol; i < vol; i++)
   rt_incvol(rt);
 else
  for (i = rt->curvol; i > vol; i--)
   rt_decvol(rt);

 rt->curvol = vol;
 mutex_unlock(&rt->lock);
 return 0;
}
