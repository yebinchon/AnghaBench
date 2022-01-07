
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;
typedef int acpi_adr_space_type ;
typedef int acpi_adr_space_setup ;
typedef int acpi_adr_space_handler ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int (*) (int ,int ,int ,int ,void*)) ;
 int ACPI_MTX_NAMESPACE ;
 int AE_BAD_PARAMETER ;
 int acpi_ev_execute_reg_methods (struct acpi_namespace_node*,int ) ;
 int acpi_ev_install_space_handler (struct acpi_namespace_node*,int ,int ,int ,void*) ;
 struct acpi_namespace_node* acpi_ns_map_handle_to_node (int ) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_install_address_space_handler(acpi_handle device,
       acpi_adr_space_type space_id,
       acpi_adr_space_handler handler,
       acpi_adr_space_setup setup, void *context)
{
 struct acpi_namespace_node *node;
 acpi_status status;

 ACPI_FUNCTION_TRACE(acpi_install_address_space_handler);



 if (!device) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 status = acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 node = acpi_ns_map_handle_to_node(device);
 if (!node) {
  status = AE_BAD_PARAMETER;
  goto unlock_and_exit;
 }



 status =
     acpi_ev_install_space_handler(node, space_id, handler, setup,
       context);
 if (ACPI_FAILURE(status)) {
  goto unlock_and_exit;
 }



 status = acpi_ev_execute_reg_methods(node, space_id);

      unlock_and_exit:
 (void)acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);
 return_ACPI_STATUS(status);
}
