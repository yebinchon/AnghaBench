
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1_adapter {int voltage; } ;
struct pt1 {int power; int lock; struct pt1_adapter** adaps; int reset; } ;


 int PT1_NR_ADAPS ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pt1_write_reg (struct pt1*,int,int) ;

__attribute__((used)) static void
pt1_update_power(struct pt1 *pt1)
{
 int bits;
 int i;
 struct pt1_adapter *adap;
 static const int sleep_bits[] = {
  1 << 4,
  1 << 6 | 1 << 7,
  1 << 5,
  1 << 6 | 1 << 8,
 };

 bits = pt1->power | !pt1->reset << 3;
 mutex_lock(&pt1->lock);
 for (i = 0; i < PT1_NR_ADAPS; i++) {
  adap = pt1->adaps[i];
  switch (adap->voltage) {
  case 129:
   bits |= 1 << 1;
   break;
  case 128:
   bits |= 1 << 1 | 1 << 2;
   break;
  default:
   break;
  }


  bits |= sleep_bits[i];
 }
 pt1_write_reg(pt1, 1, bits);
 mutex_unlock(&pt1->lock);
}
