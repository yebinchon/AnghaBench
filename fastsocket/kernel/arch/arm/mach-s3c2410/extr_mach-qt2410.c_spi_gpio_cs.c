
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_spigpio_info {int dummy; } ;




 int S3C2410_GPB (int) ;
 int s3c2410_gpio_setpin (int ,int) ;

__attribute__((used)) static void spi_gpio_cs(struct s3c2410_spigpio_info *spi, int cs)
{
 switch (cs) {
 case 129:
  s3c2410_gpio_setpin(S3C2410_GPB(5), 0);
  break;
 case 128:
  s3c2410_gpio_setpin(S3C2410_GPB(5), 1);
  break;
 }
}
