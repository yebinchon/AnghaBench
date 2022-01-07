
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int set_lcd_level (int ) ;

__attribute__((used)) static int bl_update_status(struct backlight_device *b)
{
 return set_lcd_level(b->props.brightness);
}
