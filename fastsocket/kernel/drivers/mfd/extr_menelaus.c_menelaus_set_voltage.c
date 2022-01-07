
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct menelaus_vtg {int vtg_bits; int vtg_shift; int mode_reg; int vtg_reg; int name; } ;
struct i2c_client {int dev; } ;
struct TYPE_2__ {int lock; struct i2c_client* client; } ;


 int dev_dbg (int *,char*,int ,int,int ,int) ;
 int menelaus_read_reg (int ) ;
 int menelaus_write_reg (int ,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* the_menelaus ;

__attribute__((used)) static int menelaus_set_voltage(const struct menelaus_vtg *vtg, int mV,
    int vtg_val, int mode)
{
 int val, ret;
 struct i2c_client *c = the_menelaus->client;

 mutex_lock(&the_menelaus->lock);
 if (vtg == 0)
  goto set_voltage;

 ret = menelaus_read_reg(vtg->vtg_reg);
 if (ret < 0)
  goto out;
 val = ret & ~(((1 << vtg->vtg_bits) - 1) << vtg->vtg_shift);
 val |= vtg_val << vtg->vtg_shift;

 dev_dbg(&c->dev, "Setting voltage '%s'"
    "to %d mV (reg 0x%02x, val 0x%02x)\n",
   vtg->name, mV, vtg->vtg_reg, val);

 ret = menelaus_write_reg(vtg->vtg_reg, val);
 if (ret < 0)
  goto out;
set_voltage:
 ret = menelaus_write_reg(vtg->mode_reg, mode);
out:
 mutex_unlock(&the_menelaus->lock);
 if (ret == 0) {

  msleep(1);
 }
 return ret;
}
