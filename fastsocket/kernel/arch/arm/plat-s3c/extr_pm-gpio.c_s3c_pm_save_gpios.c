
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ngpio; int label; } ;
struct s3c_gpio_chip {TYPE_1__ chip; int * pm_save; } ;


 scalar_t__ CONFIG_S3C_GPIO_SPACE ;
 unsigned int S3C_GPIO_END ;
 int S3C_PMDBG (char*,int ,int ,int ,int ,int ) ;
 struct s3c_gpio_chip* s3c_gpiolib_getchip (unsigned int) ;
 int s3c_pm_save_gpio (struct s3c_gpio_chip*) ;

void s3c_pm_save_gpios(void)
{
 struct s3c_gpio_chip *ourchip;
 unsigned int gpio_nr;

 for (gpio_nr = 0; gpio_nr < S3C_GPIO_END; gpio_nr++) {
  ourchip = s3c_gpiolib_getchip(gpio_nr);
  if (!ourchip)
   continue;

  s3c_pm_save_gpio(ourchip);

  S3C_PMDBG("%s: save %08x,%08x,%08x,%08x\n",
     ourchip->chip.label,
     ourchip->pm_save[0],
     ourchip->pm_save[1],
     ourchip->pm_save[2],
     ourchip->pm_save[3]);

  gpio_nr += ourchip->chip.ngpio;
  gpio_nr += CONFIG_S3C_GPIO_SPACE;
 }
}
