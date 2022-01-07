
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int SHARPSL_SUSPENDED ;
 int SPITZ_GPIO_CHRG_ON ;
 int SPITZ_GPIO_JK_B ;
 int gpio_set_value (int ,int) ;
 TYPE_1__ sharpsl_pm ;

__attribute__((used)) static void spitz_charge(int on)
{
 if (on) {
  if (sharpsl_pm.flags & SHARPSL_SUSPENDED) {
   gpio_set_value(SPITZ_GPIO_JK_B, 1);
   gpio_set_value(SPITZ_GPIO_CHRG_ON, 0);
  } else {
   gpio_set_value(SPITZ_GPIO_JK_B, 0);
   gpio_set_value(SPITZ_GPIO_CHRG_ON, 0);
  }
 } else {
  gpio_set_value(SPITZ_GPIO_JK_B, 0);
  gpio_set_value(SPITZ_GPIO_CHRG_ON, 1);
 }
}
