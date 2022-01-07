
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trust {unsigned long curfreq; int lock; } ;


 int TSA6060T_ADDR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int write_i2c (struct trust*,int,int ,unsigned long,unsigned long,int,int ) ;

__attribute__((used)) static void tr_setfreq(struct trust *tr, unsigned long f)
{
 mutex_lock(&tr->lock);
 tr->curfreq = f;
 f /= 160;
 f += 1070;
 write_i2c(tr, 5, TSA6060T_ADDR, (f << 1) | 1, f >> 7, 0x60 | ((f >> 15) & 1), 0);
 mutex_unlock(&tr->lock);
}
