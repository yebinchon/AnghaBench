
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_adr_space_type ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_NS_WALK_UNLOCK ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int acpi_ev_reg_run ;
 int acpi_ns_walk_namespace (int ,struct acpi_namespace_node*,int ,int ,int ,int *,int *) ;
 int ev_execute_reg_methods ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_execute_reg_methods(struct acpi_namespace_node *node,
       acpi_adr_space_type space_id)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_execute_reg_methods);







 status = acpi_ns_walk_namespace(ACPI_TYPE_ANY, node, ACPI_UINT32_MAX,
     ACPI_NS_WALK_UNLOCK, acpi_ev_reg_run,
     &space_id, ((void*)0));

 return_ACPI_STATUS(status);
}
