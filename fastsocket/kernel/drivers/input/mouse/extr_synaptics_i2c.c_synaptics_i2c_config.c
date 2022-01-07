
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int DEV_CONTROL_REG ;
 int GENERAL_2D_CONTROL_REG ;
 int INTERRUPT_EN_REG ;
 int INT_ENA_ABS_MSK ;
 int INT_ENA_REL_MSK ;
 int NO_DECELERATION ;
 int NO_FILTER ;
 int REDUCE_REPORTING ;
 scalar_t__ no_decel ;
 scalar_t__ no_filter ;
 scalar_t__ polling_req ;
 scalar_t__ reduce_report ;
 int synaptics_i2c_reg_get (struct i2c_client*,int ) ;
 int synaptics_i2c_reg_set (struct i2c_client*,int ,int) ;

__attribute__((used)) static int synaptics_i2c_config(struct i2c_client *client)
{
 int ret, control;
 u8 int_en;


 ret = synaptics_i2c_reg_set(client, DEV_CONTROL_REG, 0xc1);
 if (ret)
  return ret;


 int_en = (polling_req) ? 0 : INT_ENA_ABS_MSK | INT_ENA_REL_MSK;
 ret = synaptics_i2c_reg_set(client, INTERRUPT_EN_REG, int_en);
 if (ret)
  return ret;

 control = synaptics_i2c_reg_get(client, GENERAL_2D_CONTROL_REG);

 control |= no_decel ? 1 << NO_DECELERATION : 0;

 control |= reduce_report ? 1 << REDUCE_REPORTING : 0;

 control |= no_filter ? 1 << NO_FILTER : 0;
 ret = synaptics_i2c_reg_set(client, GENERAL_2D_CONTROL_REG, control);
 if (ret)
  return ret;

 return 0;
}
