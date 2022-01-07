
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_spigpio_info {int dummy; } ;


 int S3C2410_GPH (int) ;
 int s3c2410_gpio_setpin (int ,int) ;

__attribute__((used)) static void jive_wm8750_chipselect(struct s3c2410_spigpio_info *spi, int cs)
{
 s3c2410_gpio_setpin(S3C2410_GPH(10), cs ? 0 : 1);
}
