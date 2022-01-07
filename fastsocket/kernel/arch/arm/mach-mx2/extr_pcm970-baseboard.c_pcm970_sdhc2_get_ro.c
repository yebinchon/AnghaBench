
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ GPIO_PORTC ;
 int gpio_get_value (scalar_t__) ;

__attribute__((used)) static int pcm970_sdhc2_get_ro(struct device *dev)
{
 return gpio_get_value(GPIO_PORTC + 28);
}
