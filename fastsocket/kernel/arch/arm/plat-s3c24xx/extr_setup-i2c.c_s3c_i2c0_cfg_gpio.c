
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int S3C2410_GPE (int) ;
 int S3C2410_GPE14_IICSCL ;
 int S3C2410_GPE15_IICSDA ;
 int s3c2410_gpio_cfgpin (int ,int ) ;

void s3c_i2c0_cfg_gpio(struct platform_device *dev)
{
 s3c2410_gpio_cfgpin(S3C2410_GPE(15), S3C2410_GPE15_IICSDA);
 s3c2410_gpio_cfgpin(S3C2410_GPE(14), S3C2410_GPE14_IICSCL);
}
