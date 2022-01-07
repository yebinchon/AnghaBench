
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trust {int curbass; int lock; } ;
typedef int __u16 ;


 int TDA7318_ADDR ;
 int* basstreble2chip ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int write_i2c (struct trust*,int,int ,int) ;

__attribute__((used)) static void tr_setbass(struct trust *tr, __u16 bass)
{
 mutex_lock(&tr->lock);
 tr->curbass = bass / 4370;
 write_i2c(tr, 2, TDA7318_ADDR, 0x60 | basstreble2chip[tr->curbass]);
 mutex_unlock(&tr->lock);
}
