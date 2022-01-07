
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtrack {int lock; int io; } ;


 int inb (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int rt_getsigstr(struct rtrack *rt)
{
 int sig = 1;

 mutex_lock(&rt->lock);
 if (inb(rt->io) & 2)
  sig = 0;
 mutex_unlock(&rt->lock);
 return sig;
}
