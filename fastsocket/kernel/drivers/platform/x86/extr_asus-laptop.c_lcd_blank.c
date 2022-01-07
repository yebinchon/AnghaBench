
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int power; } ;
struct backlight_device {TYPE_1__ props; } ;


 struct backlight_device* asus_backlight_device ;
 int backlight_update_status (struct backlight_device*) ;

__attribute__((used)) static void lcd_blank(int blank)
{
 struct backlight_device *bd = asus_backlight_device;

 if (bd) {
  bd->props.power = blank;
  backlight_update_status(bd);
 }
}
