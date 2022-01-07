
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct TYPE_2__ {int lock; scalar_t__ vcore_hw_mode; struct i2c_client* client; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int MENELAUS_VCORE_CTRL1 ;
 int dev_dbg (int *,char*,unsigned int,int) ;
 int menelaus_get_vtg_value (unsigned int,int ,int ) ;
 int menelaus_write_reg (int ,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* the_menelaus ;
 int vcore_values ;

int menelaus_set_vcore_sw(unsigned int mV)
{
 int val, ret;
 struct i2c_client *c = the_menelaus->client;

 val = menelaus_get_vtg_value(mV, vcore_values,
         ARRAY_SIZE(vcore_values));
 if (val < 0)
  return -EINVAL;

 dev_dbg(&c->dev, "Setting VCORE to %d mV (val 0x%02x)\n", mV, val);


 mutex_lock(&the_menelaus->lock);
 ret = menelaus_write_reg(MENELAUS_VCORE_CTRL1, val);
 if (ret == 0)
  the_menelaus->vcore_hw_mode = 0;
 mutex_unlock(&the_menelaus->lock);
 msleep(1);

 return ret;
}
