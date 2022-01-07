
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;


 int CM_ASL_PANELBRIGHT ;
 int get_acpi (int ) ;

__attribute__((used)) static int read_brightness(struct backlight_device *bd)
{
 return get_acpi(CM_ASL_PANELBRIGHT);
}
