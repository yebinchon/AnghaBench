
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int POODLE_GPIO_SD_PWR ;
 int POODLE_GPIO_SD_PWR1 ;
 int gpio_free (int ) ;

__attribute__((used)) static void poodle_mci_exit(struct device *dev, void *data)
{
 gpio_free(POODLE_GPIO_SD_PWR1);
 gpio_free(POODLE_GPIO_SD_PWR);
}
