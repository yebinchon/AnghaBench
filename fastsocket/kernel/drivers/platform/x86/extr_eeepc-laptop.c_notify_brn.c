
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BACKLIGHT_UPDATE_HOTKEY ;
 int backlight_force_update (struct backlight_device*,int ) ;
 struct backlight_device* eeepc_backlight_device ;

__attribute__((used)) static int notify_brn(void)
{

 struct backlight_device *bd = eeepc_backlight_device;
 if (bd) {
  int old = bd->props.brightness;
  backlight_force_update(bd, BACKLIGHT_UPDATE_HOTKEY);
  return old;
 }
 return -1;
}
