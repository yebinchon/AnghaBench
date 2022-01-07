
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
struct acpi_button {int input; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int SW_LID ;
 struct acpi_button* acpi_driver_data (struct acpi_device*) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_lid_notifier ;
 int blocking_notifier_call_chain (int *,unsigned long long,struct acpi_device*) ;
 int input_report_switch (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static int acpi_lid_send_state(struct acpi_device *device)
{
 struct acpi_button *button = acpi_driver_data(device);
 unsigned long long state;
 acpi_status status;
 int ret;

 status = acpi_evaluate_integer(device->handle, "_LID", ((void*)0), &state);
 if (ACPI_FAILURE(status))
  return -ENODEV;


 input_report_switch(button->input, SW_LID, !state);
 input_sync(button->input);

 ret = blocking_notifier_call_chain(&acpi_lid_notifier, state, device);
 if (ret == NOTIFY_DONE)
  ret = blocking_notifier_call_chain(&acpi_lid_notifier, state,
         device);
 if (ret == NOTIFY_DONE || ret == NOTIFY_OK) {




  ret = 0;
 }
 return ret;
}
