
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bd2802_led {TYPE_1__* pdata; } ;
struct TYPE_2__ {int reset_gpio; } ;


 int bd2802_configure (struct bd2802_led*) ;
 int gpio_set_value (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void bd2802_reset_cancel(struct bd2802_led *led)
{
 gpio_set_value(led->pdata->reset_gpio, 1);
 udelay(100);
 bd2802_configure(led);
}
