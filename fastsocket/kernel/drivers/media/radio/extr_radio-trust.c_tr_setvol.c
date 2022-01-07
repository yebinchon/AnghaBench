
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trust {int curvol; int lock; } ;
typedef int __u16 ;


 int TDA7318_ADDR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int write_i2c (struct trust*,int,int ,int) ;

__attribute__((used)) static void tr_setvol(struct trust *tr, __u16 vol)
{
 mutex_lock(&tr->lock);
 tr->curvol = vol / 2048;
 write_i2c(tr, 2, TDA7318_ADDR, tr->curvol ^ 0x1f);
 mutex_unlock(&tr->lock);
}
