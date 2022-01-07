
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int S3C64XX_GPB (int) ;
 int S3C64XX_GPB5_I2C_SCL0 ;
 int S3C64XX_GPB6_I2C_SDA0 ;
 int S3C_GPIO_PULL_UP ;
 int s3c_gpio_cfgpin (int ,int ) ;
 int s3c_gpio_setpull (int ,int ) ;

void s3c_i2c0_cfg_gpio(struct platform_device *dev)
{
 s3c_gpio_cfgpin(S3C64XX_GPB(5), S3C64XX_GPB5_I2C_SCL0);
 s3c_gpio_cfgpin(S3C64XX_GPB(6), S3C64XX_GPB6_I2C_SDA0);
 s3c_gpio_setpull(S3C64XX_GPB(5), S3C_GPIO_PULL_UP);
 s3c_gpio_setpull(S3C64XX_GPB(6), S3C_GPIO_PULL_UP);
}
