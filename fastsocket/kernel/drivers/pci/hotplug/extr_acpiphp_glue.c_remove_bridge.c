
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpiphp_bridge {int dummy; } ;
typedef int acpi_handle ;


 int ACPI_SYSTEM_NOTIFY ;
 int ACPI_TYPE_DEVICE ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int acpi_walk_namespace (int ,int ,int ,int ,int *,int *) ;
 struct acpiphp_bridge* acpiphp_handle_to_bridge (int ) ;
 int cleanup_bridge (struct acpiphp_bridge*) ;
 int cleanup_p2p_bridge ;
 int handle_hotplug_event_bridge ;

__attribute__((used)) static void remove_bridge(acpi_handle handle)
{
 struct acpiphp_bridge *bridge;



 acpi_walk_namespace(ACPI_TYPE_DEVICE, handle,
    (u32)1, cleanup_p2p_bridge, ((void*)0), ((void*)0));
 bridge = acpiphp_handle_to_bridge(handle);
 if (bridge)
  cleanup_bridge(bridge);
 else
  acpi_remove_notify_handler(handle, ACPI_SYSTEM_NOTIFY,
        handle_hotplug_event_bridge);
}
