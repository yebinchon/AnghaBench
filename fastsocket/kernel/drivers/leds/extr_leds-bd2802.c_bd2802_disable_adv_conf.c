
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bd2802_led {scalar_t__ adf_on; TYPE_2__* pdata; TYPE_1__* client; } ;
struct TYPE_4__ {int reset_gpio; } ;
struct TYPE_3__ {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int * bd2802_addr_attributes ;
 scalar_t__ bd2802_is_all_off (struct bd2802_led*) ;
 int device_remove_file (int *,int ) ;
 int gpio_set_value (int ,int ) ;

__attribute__((used)) static void bd2802_disable_adv_conf(struct bd2802_led *led)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(bd2802_addr_attributes); i++)
  device_remove_file(&led->client->dev,
      bd2802_addr_attributes[i]);

 if (bd2802_is_all_off(led))
  gpio_set_value(led->pdata->reset_gpio, 0);

 led->adf_on = 0;
}
