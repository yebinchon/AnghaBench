
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tosa_bat {int dummy; } ;


 int TOSA_GPIO_JACKET_DETECT ;
 scalar_t__ gpio_get_value (int ) ;

__attribute__((used)) static bool tosa_jacket_bat_is_present(struct tosa_bat *bat)
{
 return gpio_get_value(TOSA_GPIO_JACKET_DETECT) == 0;
}
