
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flexcop_device {int init_state; TYPE_1__* fc_i2c_adap; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int FC_STATE_I2C_INIT ;
 int i2c_del_adapter (int *) ;

void flexcop_i2c_exit(struct flexcop_device *fc)
{
 if (fc->init_state & FC_STATE_I2C_INIT) {
  i2c_del_adapter(&fc->fc_i2c_adap[2].i2c_adap);
  i2c_del_adapter(&fc->fc_i2c_adap[1].i2c_adap);
  i2c_del_adapter(&fc->fc_i2c_adap[0].i2c_adap);
 }
 fc->init_state &= ~FC_STATE_I2C_INIT;
}
