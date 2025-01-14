
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_spi_info {int dummy; } ;


 int S3C2410_GPE (int) ;
 int S3C2410_GPE11_SPIMISO0 ;
 int S3C2410_GPE12_SPIMOSI0 ;
 int S3C2410_GPE13_SPICLK0 ;
 int S3C2410_GPIO_INPUT ;
 int s3c2410_gpio_cfgpin (int ,int ) ;
 int s3c2410_gpio_pullup (int ,int) ;

void s3c24xx_spi_gpiocfg_bus0_gpe11_12_13(struct s3c2410_spi_info *spi,
       int enable)
{
 if (enable) {
  s3c2410_gpio_cfgpin(S3C2410_GPE(13), S3C2410_GPE13_SPICLK0);
  s3c2410_gpio_cfgpin(S3C2410_GPE(12), S3C2410_GPE12_SPIMOSI0);
  s3c2410_gpio_cfgpin(S3C2410_GPE(11), S3C2410_GPE11_SPIMISO0);
  s3c2410_gpio_pullup(S3C2410_GPE(11), 0);
  s3c2410_gpio_pullup(S3C2410_GPE(13), 0);
 } else {
  s3c2410_gpio_cfgpin(S3C2410_GPE(13), S3C2410_GPIO_INPUT);
  s3c2410_gpio_cfgpin(S3C2410_GPE(11), S3C2410_GPIO_INPUT);
  s3c2410_gpio_pullup(S3C2410_GPE(11), 1);
  s3c2410_gpio_pullup(S3C2410_GPE(12), 1);
  s3c2410_gpio_pullup(S3C2410_GPE(13), 1);
 }
}
