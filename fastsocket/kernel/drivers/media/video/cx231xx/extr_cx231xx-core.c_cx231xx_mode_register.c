
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct cx231xx {int dummy; } ;


 int VRT_GET_REGISTER ;
 int VRT_SET_REGISTER ;
 int cx231xx_read_ctrl_reg (struct cx231xx*,int ,int ,int*,int) ;
 int cx231xx_write_ctrl_reg (struct cx231xx*,int ,int ,int*,int) ;

int cx231xx_mode_register(struct cx231xx *dev, u16 address, u32 mode)
{
 u8 value[4] = { 0x0, 0x0, 0x0, 0x0 };
 u32 tmp = 0;
 int status = 0;

 status =
     cx231xx_read_ctrl_reg(dev, VRT_GET_REGISTER, address, value, 4);
 if (status < 0)
  return status;

 tmp = *((u32 *) value);
 tmp |= mode;

 value[0] = (u8) tmp;
 value[1] = (u8) (tmp >> 8);
 value[2] = (u8) (tmp >> 16);
 value[3] = (u8) (tmp >> 24);

 status =
     cx231xx_write_ctrl_reg(dev, VRT_SET_REGISTER, address, value, 4);

 return status;
}
