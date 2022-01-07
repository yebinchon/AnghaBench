
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 unsigned int S3C64XX_GPG (int) ;
 unsigned int S3C64XX_GPH (int) ;
 int S3C_GPIO_PULL_NONE ;
 int S3C_GPIO_PULL_UP ;
 int S3C_GPIO_SFN (int) ;
 int s3c_gpio_cfgpin (unsigned int,int ) ;
 int s3c_gpio_setpull (unsigned int,int ) ;

void s3c64xx_setup_sdhci1_cfg_gpio(struct platform_device *dev, int width)
{
 unsigned int gpio;
 unsigned int end;

 end = S3C64XX_GPH(2 + width);


 for (gpio = S3C64XX_GPH(0); gpio < end; gpio++) {
  s3c_gpio_cfgpin(gpio, S3C_GPIO_SFN(2));
  s3c_gpio_setpull(gpio, S3C_GPIO_PULL_NONE);
 }

 s3c_gpio_setpull(S3C64XX_GPG(6), S3C_GPIO_PULL_UP);
 s3c_gpio_cfgpin(S3C64XX_GPG(6), S3C_GPIO_SFN(3));
}
