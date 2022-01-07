
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ MV64x60_I2C_REG_STATUS ;
 scalar_t__ ctlr_base ;
 int in_le32 (int *) ;
 int udelay (int) ;

__attribute__((used)) static int mv64x60_i2c_wait_for_status(int wanted)
{
 int i;
 int status;

 for (i=0; i<1000; i++) {
  udelay(10);
  status = in_le32((u32 *)(ctlr_base + MV64x60_I2C_REG_STATUS))
   & 0xff;
  if (status == wanted)
   return status;
 }
 return -status;
}
