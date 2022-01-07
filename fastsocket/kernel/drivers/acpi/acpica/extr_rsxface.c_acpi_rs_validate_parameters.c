
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {scalar_t__ type; } ;
struct acpi_buffer {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_TYPE_DEVICE ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int AE_TYPE ;
 struct acpi_namespace_node* acpi_ns_map_handle_to_node (int ) ;
 int acpi_ut_validate_buffer (struct acpi_buffer*) ;
 int return_ACPI_STATUS (int ) ;
 int rs_validate_parameters ;

__attribute__((used)) static acpi_status
acpi_rs_validate_parameters(acpi_handle device_handle,
       struct acpi_buffer *buffer,
       struct acpi_namespace_node **return_node)
{
 acpi_status status;
 struct acpi_namespace_node *node;

 ACPI_FUNCTION_TRACE(rs_validate_parameters);




 if (!device_handle) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 node = acpi_ns_map_handle_to_node(device_handle);
 if (!node) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 if (node->type != ACPI_TYPE_DEVICE) {
  return_ACPI_STATUS(AE_TYPE);
 }
 status = acpi_ut_validate_buffer(buffer);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 *return_node = node;
 return_ACPI_STATUS(AE_OK);
}
