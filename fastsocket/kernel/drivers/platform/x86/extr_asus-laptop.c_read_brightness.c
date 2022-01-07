
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int acpi_evaluate_integer (int ,int *,int *,unsigned long long*) ;
 int brightness_get_handle ;
 int pr_warning (char*) ;

__attribute__((used)) static int read_brightness(struct backlight_device *bd)
{
 unsigned long long value;
 acpi_status rv = AE_OK;

 rv = acpi_evaluate_integer(brightness_get_handle, ((void*)0), ((void*)0), &value);
 if (ACPI_FAILURE(rv))
  pr_warning("Error reading brightness\n");

 return value;
}
