
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ MV64x60_I2C_REG_CONTROL ;
 scalar_t__ MV64x60_I2C_REG_DATA ;
 scalar_t__ ctlr_base ;
 int in_le32 (int *) ;
 scalar_t__ mv64x60_i2c_wait_for_status (int) ;
 int out_le32 (int *,int) ;

__attribute__((used)) static int mv64x60_i2c_read_byte(int control, int status)
{
 out_le32((u32 *)(ctlr_base + MV64x60_I2C_REG_CONTROL), control & 0xff);
 if (mv64x60_i2c_wait_for_status(status) < 0)
  return -1;
 return in_le32((u32 *)(ctlr_base + MV64x60_I2C_REG_DATA)) & 0xff;
}
