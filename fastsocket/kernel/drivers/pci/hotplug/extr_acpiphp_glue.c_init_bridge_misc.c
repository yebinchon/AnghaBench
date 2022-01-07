
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct acpiphp_bridge {scalar_t__ type; int flags; int handle; TYPE_1__* func; int list; } ;
typedef int acpi_status ;
struct TYPE_2__ {int handle; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SYSTEM_NOTIFY ;
 int ACPI_TYPE_DEVICE ;
 int BRIDGE_HAS_EJ0 ;
 scalar_t__ BRIDGE_TYPE_HOST ;
 int acpi_install_notify_handler (int ,int ,int ,struct acpiphp_bridge*) ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int acpi_walk_namespace (int ,int ,int ,int ,struct acpiphp_bridge*,int *) ;
 int bridge_list ;
 int err (char*) ;
 int handle_hotplug_event_bridge ;
 int handle_hotplug_event_func ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int register_slot ;

__attribute__((used)) static void init_bridge_misc(struct acpiphp_bridge *bridge)
{
 acpi_status status;


 list_add(&bridge->list, &bridge_list);


 status = acpi_walk_namespace(ACPI_TYPE_DEVICE, bridge->handle, (u32)1,
         register_slot, bridge, ((void*)0));
 if (ACPI_FAILURE(status)) {
  list_del(&bridge->list);
  return;
 }


 if (bridge->type != BRIDGE_TYPE_HOST) {
  if ((bridge->flags & BRIDGE_HAS_EJ0) && bridge->func) {
   status = acpi_remove_notify_handler(bridge->func->handle,
      ACPI_SYSTEM_NOTIFY,
      handle_hotplug_event_func);
   if (ACPI_FAILURE(status))
    err("failed to remove notify handler\n");
  }
  status = acpi_install_notify_handler(bridge->handle,
          ACPI_SYSTEM_NOTIFY,
          handle_hotplug_event_bridge,
          bridge);

  if (ACPI_FAILURE(status)) {
   err("failed to register interrupt notify handler\n");
  }
 }
}
