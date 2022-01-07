
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtrack2 {unsigned long curfreq; int lock; int io; int muted; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int one (struct rtrack2*) ;
 int outb_p (int,int ) ;
 int zero (struct rtrack2*) ;

__attribute__((used)) static int rt_setfreq(struct rtrack2 *dev, unsigned long freq)
{
 int i;

 mutex_lock(&dev->lock);
 dev->curfreq = freq;
 freq = freq / 200 + 856;

 outb_p(0xc8, dev->io);
 outb_p(0xc9, dev->io);
 outb_p(0xc9, dev->io);

 for (i = 0; i < 10; i++)
  zero(dev);

 for (i = 14; i >= 0; i--)
  if (freq & (1 << i))
   one(dev);
  else
   zero(dev);

 outb_p(0xc8, dev->io);
 if (!dev->muted)
  outb_p(0, dev->io);

 mutex_unlock(&dev->lock);
 return 0;
}
