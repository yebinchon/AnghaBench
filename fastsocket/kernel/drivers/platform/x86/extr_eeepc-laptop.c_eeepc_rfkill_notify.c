
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int acpi_handle ;


 scalar_t__ ACPI_NOTIFY_BUS_CHECK ;
 int eeepc_rfkill_hotplug () ;

__attribute__((used)) static void eeepc_rfkill_notify(acpi_handle handle, u32 event, void *data)
{
 if (event != ACPI_NOTIFY_BUS_CHECK)
  return;

 eeepc_rfkill_hotplug();
}
