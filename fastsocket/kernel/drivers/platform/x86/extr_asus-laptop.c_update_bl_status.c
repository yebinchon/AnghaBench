
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; scalar_t__ power; } ;
struct backlight_device {TYPE_1__ props; } ;


 scalar_t__ FB_BLANK_UNBLANK ;
 int set_brightness (struct backlight_device*,int) ;
 int set_lcd_state (int) ;

__attribute__((used)) static int update_bl_status(struct backlight_device *bd)
{
 int rv;
 int value = bd->props.brightness;

 rv = set_brightness(bd, value);
 if (rv)
  return rv;

 value = (bd->props.power == FB_BLANK_UNBLANK) ? 1 : 0;
 return set_lcd_state(value);
}
