
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpiphp_bridge {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_TYPE_DEVICE ;
 int AE_OK ;
 int acpi_walk_namespace (int ,int ,int ,int (*) (int ,int ,void*,void**),int *,int *) ;
 struct acpiphp_bridge* acpiphp_handle_to_bridge (int ) ;
 int cleanup_bridge (struct acpiphp_bridge*) ;

__attribute__((used)) static acpi_status
cleanup_p2p_bridge(acpi_handle handle, u32 lvl, void *context, void **rv)
{
 struct acpiphp_bridge *bridge;



 acpi_walk_namespace(ACPI_TYPE_DEVICE, handle, (u32)1,
    cleanup_p2p_bridge, ((void*)0), ((void*)0));

 bridge = acpiphp_handle_to_bridge(handle);
 if (bridge)
  cleanup_bridge(bridge);

 return AE_OK;
}
