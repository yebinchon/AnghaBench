
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int GPIO_NR_PALMZ72_POWER_DETECT ;
 int GPIO_NR_PALMZ72_USB_DETECT_N ;
 int gpio_free (int ) ;

__attribute__((used)) static void power_supply_exit(struct device *dev)
{
 gpio_free(GPIO_NR_PALMZ72_USB_DETECT_N);
 gpio_free(GPIO_NR_PALMZ72_POWER_DETECT);
}
