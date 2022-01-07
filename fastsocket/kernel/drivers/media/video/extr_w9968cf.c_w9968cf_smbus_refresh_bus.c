
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9968cf_device {int dummy; } ;


 int w9968cf_write_reg (struct w9968cf_device*,int,int) ;

__attribute__((used)) static int w9968cf_smbus_refresh_bus(struct w9968cf_device* cam)
{
 int err = 0, j;

 for (j = 1; j <= 10; j++) {
  err = w9968cf_write_reg(cam, 0x0020, 0x01);
  err += w9968cf_write_reg(cam, 0x0000, 0x01);
  if (err)
   break;
 }

 return err;
}
