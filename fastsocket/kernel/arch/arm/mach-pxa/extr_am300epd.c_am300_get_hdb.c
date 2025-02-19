
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct broadsheetfb_par {int dummy; } ;


 int DB0_GPIO_PIN ;
 int DB15_GPIO_PIN ;
 scalar_t__ gpio_get_value (int) ;

__attribute__((used)) static u16 am300_get_hdb(struct broadsheetfb_par *par)
{
 u16 res = 0;
 int i;

 for (i = 0; i <= (DB15_GPIO_PIN - DB0_GPIO_PIN) ; i++)
  res |= (gpio_get_value(DB0_GPIO_PIN + i)) ? (1 << i) : 0;

 return res;
}
