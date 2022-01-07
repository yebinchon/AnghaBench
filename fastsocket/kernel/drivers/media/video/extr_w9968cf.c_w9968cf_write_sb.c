
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w9968cf_device {int dummy; } ;


 int W9968CF_I2C_BUS_DELAY ;
 int udelay (int ) ;
 int w9968cf_write_reg (struct w9968cf_device*,int ,int) ;

__attribute__((used)) static int w9968cf_write_sb(struct w9968cf_device* cam, u16 value)
{
 int err = 0;

 err = w9968cf_write_reg(cam, value, 0x01);
 udelay(W9968CF_I2C_BUS_DELAY);

 return err;
}
