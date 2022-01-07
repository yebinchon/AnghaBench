
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtrack2 {scalar_t__ muted; int lock; int io; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int ,int ) ;

__attribute__((used)) static void rt_unmute(struct rtrack2 *dev)
{
 if(dev->muted == 0)
  return;
 mutex_lock(&dev->lock);
 outb(0, dev->io);
 mutex_unlock(&dev->lock);
 dev->muted = 0;
}
