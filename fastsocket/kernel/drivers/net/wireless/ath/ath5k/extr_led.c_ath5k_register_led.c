
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* default_trigger; int brightness_set; int name; } ;
struct ath5k_led {struct ath5k_hw* ah; TYPE_1__ led_dev; int name; } ;
struct ath5k_hw {int dev; } ;


 int ATH5K_WARN (struct ath5k_hw*,char*,char const*) ;
 int ath5k_led_brightness_set ;
 int led_classdev_register (int ,TYPE_1__*) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static int
ath5k_register_led(struct ath5k_hw *ah, struct ath5k_led *led,
     const char *name, char *trigger)
{
 int err;

 led->ah = ah;
 strncpy(led->name, name, sizeof(led->name));
 led->led_dev.name = led->name;
 led->led_dev.default_trigger = trigger;
 led->led_dev.brightness_set = ath5k_led_brightness_set;

 err = led_classdev_register(ah->dev, &led->led_dev);
 if (err) {
  ATH5K_WARN(ah, "could not register LED %s\n", name);
  led->ah = ((void*)0);
 }
 return err;
}
