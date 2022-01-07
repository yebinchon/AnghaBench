
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
struct acpi_button {int input; } ;


 int acpi_button_remove_fs (struct acpi_device*) ;
 struct acpi_button* acpi_driver_data (struct acpi_device*) ;
 int input_unregister_device (int ) ;
 int kfree (struct acpi_button*) ;

__attribute__((used)) static int acpi_button_remove(struct acpi_device *device, int type)
{
 struct acpi_button *button = acpi_driver_data(device);

 acpi_button_remove_fs(device);
 input_unregister_device(button->input);
 kfree(button);
 return 0;
}
