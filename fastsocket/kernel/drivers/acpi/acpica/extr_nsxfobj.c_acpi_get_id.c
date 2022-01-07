
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {int owner_id; } ;
typedef int acpi_status ;
typedef int acpi_owner_id ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_MTX_NAMESPACE ;
 int AE_BAD_PARAMETER ;
 struct acpi_namespace_node* acpi_ns_map_handle_to_node (int ) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;

acpi_status acpi_get_id(acpi_handle handle, acpi_owner_id * ret_id)
{
 struct acpi_namespace_node *node;
 acpi_status status;



 if (!ret_id) {
  return (AE_BAD_PARAMETER);
 }

 status = acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
 if (ACPI_FAILURE(status)) {
  return (status);
 }



 node = acpi_ns_map_handle_to_node(handle);
 if (!node) {
  (void)acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);
  return (AE_BAD_PARAMETER);
 }

 *ret_id = node->owner_id;

 status = acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);
 return (status);
}
