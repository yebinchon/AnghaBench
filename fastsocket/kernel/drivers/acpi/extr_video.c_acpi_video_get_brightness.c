
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct backlight_device {int dummy; } ;
struct acpi_video_device {TYPE_1__* brightness; } ;
struct TYPE_2__ {int count; unsigned long long* levels; } ;


 int EINVAL ;
 scalar_t__ acpi_video_device_lcd_get_level_current (struct acpi_video_device*,unsigned long long*) ;
 scalar_t__ bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int acpi_video_get_brightness(struct backlight_device *bd)
{
 unsigned long long cur_level;
 int i;
 struct acpi_video_device *vd =
  (struct acpi_video_device *)bl_get_data(bd);

 if (acpi_video_device_lcd_get_level_current(vd, &cur_level))
  return -EINVAL;
 for (i = 2; i < vd->brightness->count; i++) {
  if (vd->brightness->levels[i] == cur_level)


   return i-2;
 }
 return 0;
}
