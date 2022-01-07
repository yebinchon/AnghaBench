
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct acpi_video_device {TYPE_2__* brightness; } ;
struct TYPE_4__ {int * levels; } ;


 int acpi_video_device_lcd_set_level (struct acpi_video_device*,int ) ;
 scalar_t__ bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int acpi_video_set_brightness(struct backlight_device *bd)
{
 int request_level = bd->props.brightness + 2;
 struct acpi_video_device *vd =
  (struct acpi_video_device *)bl_get_data(bd);

 return acpi_video_device_lcd_set_level(vd,
    vd->brightness->levels[request_level]);
}
