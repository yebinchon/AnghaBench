
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtrack2 {int muted; int lock; int io; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,int ) ;

__attribute__((used)) static void rt_mute(struct rtrack2 *dev)
{
 if (dev->muted)
  return;
 mutex_lock(&dev->lock);
 outb(1, dev->io);
 mutex_unlock(&dev->lock);
 dev->muted = 1;
}
