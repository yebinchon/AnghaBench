
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9968cf_device {int dummy; } ;


 int W9968CF_I2C_BUS_DELAY ;
 int udelay (int ) ;
 int w9968cf_read_reg (struct w9968cf_device*,int) ;

__attribute__((used)) static int w9968cf_read_sb(struct w9968cf_device* cam)
{
 int v = 0;

 v = w9968cf_read_reg(cam, 0x01);
 udelay(W9968CF_I2C_BUS_DELAY);

 return v;
}
