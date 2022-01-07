
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_size ;


 char* ACPI_ALLOCATE_ZEROED (scalar_t__) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (char*) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_namespace_node*) ;
 int AE_INFO ;
 int acpi_ns_build_external_path (struct acpi_namespace_node*,scalar_t__,char*) ;
 scalar_t__ acpi_ns_get_pathname_length (struct acpi_namespace_node*) ;
 int ns_get_external_pathname ;
 int return_PTR (char*) ;

char *acpi_ns_get_external_pathname(struct acpi_namespace_node *node)
{
 acpi_status status;
 char *name_buffer;
 acpi_size size;

 ACPI_FUNCTION_TRACE_PTR(ns_get_external_pathname, node);



 size = acpi_ns_get_pathname_length(node);
 if (!size) {
  return_PTR(((void*)0));
 }



 name_buffer = ACPI_ALLOCATE_ZEROED(size);
 if (!name_buffer) {
  ACPI_ERROR((AE_INFO, "Could not allocate %u bytes", (u32)size));
  return_PTR(((void*)0));
 }



 status = acpi_ns_build_external_path(node, size, name_buffer);
 if (ACPI_FAILURE(status)) {
  ACPI_FREE(name_buffer);
  return_PTR(((void*)0));
 }

 return_PTR(name_buffer);
}
