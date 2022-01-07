
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trust {int curstereo; int ioval; int lock; int io; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,int ) ;

__attribute__((used)) static void tr_setstereo(struct trust *tr, int stereo)
{
 mutex_lock(&tr->lock);
 tr->curstereo = !!stereo;
 tr->ioval = (tr->ioval & 0xfb) | (!tr->curstereo << 2);
 outb(tr->ioval, tr->io);
 mutex_unlock(&tr->lock);
}
