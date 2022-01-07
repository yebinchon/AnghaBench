
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx231xx {int dummy; } ;


 int I2C_DEMOD_EN ;
 int PWR_CTL_EN ;
 int VRT_GET_REGISTER ;
 int VRT_SET_REGISTER ;
 int cx231xx_info (char*,int) ;
 int cx231xx_read_ctrl_reg (struct cx231xx*,int ,int ,int*,int) ;
 int cx231xx_write_ctrl_reg (struct cx231xx*,int ,int ,int*,int) ;

int cx231xx_enable_i2c_port_3(struct cx231xx *dev, bool is_port_3)
{
 u8 value[4] = { 0, 0, 0, 0 };
 int status = 0;
 bool current_is_port_3;

 status = cx231xx_read_ctrl_reg(dev, VRT_GET_REGISTER,
           PWR_CTL_EN, value, 4);
 if (status < 0)
  return status;

 current_is_port_3 = value[0] & I2C_DEMOD_EN ? 1 : 0;


 if (current_is_port_3 == is_port_3)
  return 0;

 if (is_port_3)
  value[0] |= I2C_DEMOD_EN;
 else
  value[0] &= ~I2C_DEMOD_EN;

 cx231xx_info("Changing the i2c master port to %d\n",
       is_port_3 ? 3 : 1);

 status = cx231xx_write_ctrl_reg(dev, VRT_SET_REGISTER,
     PWR_CTL_EN, value, 4);

 return status;

}
