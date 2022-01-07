
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_buffer {scalar_t__ pointer; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_size ;
typedef int acpi_handle ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,int ) ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int acpi_ns_build_external_path (struct acpi_namespace_node*,scalar_t__,scalar_t__) ;
 scalar_t__ acpi_ns_get_pathname_length (struct acpi_namespace_node*) ;
 struct acpi_namespace_node* acpi_ns_map_handle_to_node (int ) ;
 int acpi_ut_initialize_buffer (struct acpi_buffer*,scalar_t__) ;
 int ns_handle_to_pathname ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ns_handle_to_pathname(acpi_handle target_handle,
      struct acpi_buffer * buffer)
{
 acpi_status status;
 struct acpi_namespace_node *node;
 acpi_size required_size;

 ACPI_FUNCTION_TRACE_PTR(ns_handle_to_pathname, target_handle);

 node = acpi_ns_map_handle_to_node(target_handle);
 if (!node) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }



 required_size = acpi_ns_get_pathname_length(node);
 if (!required_size) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }



 status = acpi_ut_initialize_buffer(buffer, required_size);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 status =
     acpi_ns_build_external_path(node, required_size, buffer->pointer);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "%s [%X]\n",
     (char *)buffer->pointer, (u32) required_size));
 return_ACPI_STATUS(AE_OK);
}
