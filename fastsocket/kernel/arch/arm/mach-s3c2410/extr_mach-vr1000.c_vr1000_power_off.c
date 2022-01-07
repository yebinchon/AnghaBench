
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_GPB (int) ;
 int S3C2410_GPIO_OUTPUT ;
 int s3c2410_gpio_cfgpin (int ,int ) ;
 int s3c2410_gpio_setpin (int ,int) ;

__attribute__((used)) static void vr1000_power_off(void)
{
 s3c2410_gpio_cfgpin(S3C2410_GPB(9), S3C2410_GPIO_OUTPUT);
 s3c2410_gpio_setpin(S3C2410_GPB(9), 1);
}
