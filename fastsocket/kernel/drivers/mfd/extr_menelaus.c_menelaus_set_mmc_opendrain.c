
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int EINVAL ;
 int MENELAUS_MCT_CTRL1 ;
 int menelaus_read_reg (int ) ;
 int menelaus_write_reg (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* the_menelaus ;

int menelaus_set_mmc_opendrain(int slot, int enable)
{
 int ret, val;

 if (slot != 1 && slot != 2)
  return -EINVAL;
 mutex_lock(&the_menelaus->lock);
 ret = menelaus_read_reg(MENELAUS_MCT_CTRL1);
 if (ret < 0) {
  mutex_unlock(&the_menelaus->lock);
  return ret;
 }
 val = ret;
 if (slot == 1) {
  if (enable)
   val |= 1 << 2;
  else
   val &= ~(1 << 2);
 } else {
  if (enable)
   val |= 1 << 3;
  else
   val &= ~(1 << 3);
 }
 ret = menelaus_write_reg(MENELAUS_MCT_CTRL1, val);
 mutex_unlock(&the_menelaus->lock);

 return ret;
}
