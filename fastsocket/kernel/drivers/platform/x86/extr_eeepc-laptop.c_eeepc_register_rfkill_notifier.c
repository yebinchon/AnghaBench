
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_SYSTEM_NOTIFY ;
 int AE_OK ;
 int ENODEV ;
 int acpi_get_handle (int *,char*,int *) ;
 int acpi_install_notify_handler (int ,int ,int ,int *) ;
 int eeepc_rfkill_notify ;
 int pr_warning (char*,char*) ;

__attribute__((used)) static int eeepc_register_rfkill_notifier(char *node)
{
 acpi_status status = AE_OK;
 acpi_handle handle;

 status = acpi_get_handle(((void*)0), node, &handle);

 if (ACPI_SUCCESS(status)) {
  status = acpi_install_notify_handler(handle,
           ACPI_SYSTEM_NOTIFY,
           eeepc_rfkill_notify,
           ((void*)0));
  if (ACPI_FAILURE(status))
   pr_warning("Failed to register notify on %s\n", node);
 } else
  return -ENODEV;

 return 0;
}
