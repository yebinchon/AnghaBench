
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trust {int curmute; int ioval; int lock; int io; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,int ) ;

__attribute__((used)) static void tr_setmute(struct trust *tr, int mute)
{
 mutex_lock(&tr->lock);
 tr->curmute = !!mute;
 tr->ioval = (tr->ioval & 0xf7) | (tr->curmute << 3);
 outb(tr->ioval, tr->io);
 mutex_unlock(&tr->lock);
}
