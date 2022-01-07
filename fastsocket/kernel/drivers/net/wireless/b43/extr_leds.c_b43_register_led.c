
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct b43_wldev {int * wl; TYPE_1__* dev; } ;
struct TYPE_4__ {char const* default_trigger; int brightness_set; int name; } ;
struct b43_led {int activelow; int * wl; TYPE_2__ led_dev; int name; int state; int index; } ;
struct TYPE_3__ {int dev; } ;


 int EEXIST ;
 int EINVAL ;
 int atomic_set (int *,int ) ;
 int b43_led_brightness_set ;
 int b43warn (int *,char*,char const*) ;
 int led_classdev_register (int ,TYPE_2__*) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static int b43_register_led(struct b43_wldev *dev, struct b43_led *led,
       const char *name, const char *default_trigger,
       u8 led_index, bool activelow)
{
 int err;

 if (led->wl)
  return -EEXIST;
 if (!default_trigger)
  return -EINVAL;
 led->wl = dev->wl;
 led->index = led_index;
 led->activelow = activelow;
 strncpy(led->name, name, sizeof(led->name));
 atomic_set(&led->state, 0);

 led->led_dev.name = led->name;
 led->led_dev.default_trigger = default_trigger;
 led->led_dev.brightness_set = b43_led_brightness_set;

 err = led_classdev_register(dev->dev->dev, &led->led_dev);
 if (err) {
  b43warn(dev->wl, "LEDs: Failed to register %s\n", name);
  led->wl = ((void*)0);
  return err;
 }

 return 0;
}
