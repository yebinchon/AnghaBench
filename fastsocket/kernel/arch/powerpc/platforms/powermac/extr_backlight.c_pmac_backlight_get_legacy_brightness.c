
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct backlight_properties {int brightness; int max_brightness; } ;
struct TYPE_2__ {struct backlight_properties props; } ;


 int ENXIO ;
 int OLD_BACKLIGHT_MAX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* pmac_backlight ;
 int pmac_backlight_mutex ;

int pmac_backlight_get_legacy_brightness()
{
 int result = -ENXIO;

 mutex_lock(&pmac_backlight_mutex);
 if (pmac_backlight) {
  struct backlight_properties *props;

  props = &pmac_backlight->props;

  result = props->brightness *
   (OLD_BACKLIGHT_MAX + 1) /
   (props->max_brightness + 1);
 }
 mutex_unlock(&pmac_backlight_mutex);

 return result;
}
