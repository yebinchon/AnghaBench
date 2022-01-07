
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;


 int EIO ;
 int brightness_set_handle ;
 int pr_warning (char*) ;
 scalar_t__ write_acpi_int (int ,int *,int,int *) ;

__attribute__((used)) static int set_brightness(struct backlight_device *bd, int value)
{
 int ret = 0;

 value = (0 < value) ? ((15 < value) ? 15 : value) : 0;


 if (write_acpi_int(brightness_set_handle, ((void*)0), value, ((void*)0))) {
  pr_warning("Error changing brightness\n");
  ret = -EIO;
 }

 return ret;
}
