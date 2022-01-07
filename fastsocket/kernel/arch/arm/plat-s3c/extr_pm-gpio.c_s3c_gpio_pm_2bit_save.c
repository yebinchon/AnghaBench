
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_gpio_chip {scalar_t__ base; void** pm_save; } ;


 scalar_t__ OFFS_CON ;
 scalar_t__ OFFS_DAT ;
 scalar_t__ OFFS_UP ;
 void* __raw_readl (scalar_t__) ;

__attribute__((used)) static void s3c_gpio_pm_2bit_save(struct s3c_gpio_chip *chip)
{
 chip->pm_save[0] = __raw_readl(chip->base + OFFS_CON);
 chip->pm_save[1] = __raw_readl(chip->base + OFFS_DAT);
 chip->pm_save[2] = __raw_readl(chip->base + OFFS_UP);
}
