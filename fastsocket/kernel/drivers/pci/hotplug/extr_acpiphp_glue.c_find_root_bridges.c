
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_SYSTEM_NOTIFY ;
 int AE_OK ;
 int acpi_install_notify_handler (int ,int ,int ,int *) ;
 scalar_t__ acpi_is_root_bridge (int ) ;
 int handle_hotplug_event_bridge ;

__attribute__((used)) static acpi_status
find_root_bridges(acpi_handle handle, u32 lvl, void *context, void **rv)
{
 int *count = (int *)context;

 if (acpi_is_root_bridge(handle)) {
  acpi_install_notify_handler(handle, ACPI_SYSTEM_NOTIFY,
    handle_hotplug_event_bridge, ((void*)0));
   (*count)++;
 }
 return AE_OK ;
}
