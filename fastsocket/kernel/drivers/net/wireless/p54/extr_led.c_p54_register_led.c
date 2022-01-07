
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* default_trigger; int brightness_set; int name; } ;
struct p54_led_dev {int registered; unsigned int index; TYPE_2__ led_dev; int name; TYPE_1__* hw_dev; } ;
struct p54_common {TYPE_1__* hw; struct p54_led_dev* leds; } ;
struct TYPE_3__ {int wiphy; } ;


 int EEXIST ;
 int led_classdev_register (int ,TYPE_2__*) ;
 int p54_led_brightness_set ;
 int snprintf (int ,int,char*,char*,char*) ;
 int wiphy_dev (int ) ;
 int wiphy_err (int ,char*,char*) ;
 char* wiphy_name (int ) ;

__attribute__((used)) static int p54_register_led(struct p54_common *priv,
       unsigned int led_index,
       char *name, char *trigger)
{
 struct p54_led_dev *led = &priv->leds[led_index];
 int err;

 if (led->registered)
  return -EEXIST;

 snprintf(led->name, sizeof(led->name), "p54-%s::%s",
   wiphy_name(priv->hw->wiphy), name);
 led->hw_dev = priv->hw;
 led->index = led_index;
 led->led_dev.name = led->name;
 led->led_dev.default_trigger = trigger;
 led->led_dev.brightness_set = p54_led_brightness_set;

 err = led_classdev_register(wiphy_dev(priv->hw->wiphy), &led->led_dev);
 if (err)
  wiphy_err(priv->hw->wiphy,
     "Failed to register %s LED.\n", name);
 else
  led->registered = 1;

 return err;
}
