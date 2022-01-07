
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpiphp_func {struct acpiphp_bridge* bridge; } ;
struct acpiphp_bridge {int flags; struct acpiphp_func* func; int handle; } ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int BRIDGE_HAS_EJ0 ;
 int BRIDGE_HAS_PS0 ;
 int BRIDGE_HAS_PS3 ;
 int BRIDGE_HAS_STA ;
 int acpi_get_handle (int ,char*,int *) ;
 struct acpiphp_func* acpiphp_bridge_handle_to_function (int ) ;
 int dbg (char*) ;

__attribute__((used)) static inline void config_p2p_bridge_flags(struct acpiphp_bridge *bridge)
{
 acpi_handle dummy_handle;

 if (ACPI_SUCCESS(acpi_get_handle(bridge->handle,
     "_STA", &dummy_handle)))
  bridge->flags |= BRIDGE_HAS_STA;

 if (ACPI_SUCCESS(acpi_get_handle(bridge->handle,
     "_EJ0", &dummy_handle)))
  bridge->flags |= BRIDGE_HAS_EJ0;

 if (ACPI_SUCCESS(acpi_get_handle(bridge->handle,
     "_PS0", &dummy_handle)))
  bridge->flags |= BRIDGE_HAS_PS0;

 if (ACPI_SUCCESS(acpi_get_handle(bridge->handle,
     "_PS3", &dummy_handle)))
  bridge->flags |= BRIDGE_HAS_PS3;


 if (bridge->flags & BRIDGE_HAS_EJ0) {
  struct acpiphp_func *func;

  dbg("found ejectable p2p bridge\n");


  func = acpiphp_bridge_handle_to_function(bridge->handle);
  if (!func)
   return;
  bridge->func = func;
  func->bridge = bridge;
 }
}
