
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ MV64x60_I2C_REG_CONTROL ;
 scalar_t__ MV64x60_I2C_REG_DATA ;
 scalar_t__ ctlr_base ;
 int mv64x60_i2c_wait_for_status (int) ;
 int out_le32 (int *,int) ;

__attribute__((used)) static int mv64x60_i2c_write_byte(int data, int control, int status)
{
 out_le32((u32 *)(ctlr_base + MV64x60_I2C_REG_DATA), data & 0xff);
 out_le32((u32 *)(ctlr_base + MV64x60_I2C_REG_CONTROL), control & 0xff);
 return mv64x60_i2c_wait_for_status(status);
}
