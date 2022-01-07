
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
 int acpi_get_handle (int *,char*,int *) ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int eeepc_rfkill_notify ;
 int pr_err (char*,char*) ;

__attribute__((used)) static void eeepc_unregister_rfkill_notifier(char *node)
{
 acpi_status status = AE_OK;
 acpi_handle handle;

 status = acpi_get_handle(((void*)0), node, &handle);

 if (ACPI_SUCCESS(status)) {
  status = acpi_remove_notify_handler(handle,
           ACPI_SYSTEM_NOTIFY,
           eeepc_rfkill_notify);
  if (ACPI_FAILURE(status))
   pr_err("Error removing rfkill notify handler %s\n",
    node);
 }
}
