
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtrack {int muted; int lock; int io; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,int ) ;

__attribute__((used)) static void rt_mute(struct rtrack *rt)
{
 rt->muted = 1;
 mutex_lock(&rt->lock);
 outb(0xd0, rt->io);
 mutex_unlock(&rt->lock);
}
