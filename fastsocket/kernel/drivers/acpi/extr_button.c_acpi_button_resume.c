
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
struct acpi_button {scalar_t__ type; } ;


 scalar_t__ ACPI_BUTTON_TYPE_LID ;
 struct acpi_button* acpi_driver_data (struct acpi_device*) ;
 int acpi_lid_send_state (struct acpi_device*) ;

__attribute__((used)) static int acpi_button_resume(struct acpi_device *device)
{
 struct acpi_button *button = acpi_driver_data(device);

 if (button->type == ACPI_BUTTON_TYPE_LID)
  return acpi_lid_send_state(device);
 return 0;
}
