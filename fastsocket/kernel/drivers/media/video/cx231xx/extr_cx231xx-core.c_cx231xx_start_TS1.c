
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx231xx {int dummy; } ;


 int TS1_CFG_REG ;
 int TS_MODE_REG ;
 int VRT_SET_REGISTER ;
 int cx231xx_write_ctrl_reg (struct cx231xx*,int ,int ,int*,int) ;

void cx231xx_start_TS1(struct cx231xx *dev)
{
 int status = 0;
 u8 val[4] = { 0, 0, 0, 0 };

   val[0] = 0x03;
   val[1] = 0x03;
   val[2] = 0x00;
   val[3] = 0x00;
   status = cx231xx_write_ctrl_reg(dev, VRT_SET_REGISTER,
     TS_MODE_REG, val, 4);

   val[0] = 0x04;
   val[1] = 0xA3;
   val[2] = 0x3B;
   val[3] = 0x00;
   status = cx231xx_write_ctrl_reg(dev, VRT_SET_REGISTER,
     TS1_CFG_REG, val, 4);
}
