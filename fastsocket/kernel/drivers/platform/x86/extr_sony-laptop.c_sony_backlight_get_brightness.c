
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;


 scalar_t__ acpi_callgetfunc (int ,char*,int*) ;
 int sony_nc_acpi_handle ;

__attribute__((used)) static int sony_backlight_get_brightness(struct backlight_device *bd)
{
 int value;

 if (acpi_callgetfunc(sony_nc_acpi_handle, "GBRT", &value))
  return 0;

 return value - 1;
}
