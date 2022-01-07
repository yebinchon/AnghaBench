
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trust {int lock; int io; } ;


 int inb (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int tr_getsigstr(struct trust *tr)
{
 int i, v;

 mutex_lock(&tr->lock);
 for (i = 0, v = 0; i < 100; i++)
  v |= inb(tr->io);
 mutex_unlock(&tr->lock);
 return (v & 1) ? 0 : 0xffff;
}
