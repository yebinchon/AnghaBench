
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtrack2 {int lock; int io; } ;


 int inb (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int rt_getsigstr(struct rtrack2 *dev)
{
 int sig = 1;

 mutex_lock(&dev->lock);
 if (inb(dev->io) & 2)
  sig = 0;
 mutex_unlock(&dev->lock);
 return sig;
}
