
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {int dummy; } ;
typedef int * acpi_string ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;


 int ACPI_FUNCTION_ENTRY () ;
 int ACPI_NS_NO_UPSEARCH ;
 int ACPI_NS_ROOT_PATH ;
 int ACPI_STRCMP (int *,int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 struct acpi_namespace_node* acpi_gbl_root_node ;
 scalar_t__ acpi_ns_convert_entry_to_handle (struct acpi_namespace_node*) ;
 int acpi_ns_get_node (struct acpi_namespace_node*,int *,int ,struct acpi_namespace_node**) ;
 struct acpi_namespace_node* acpi_ns_map_handle_to_node (scalar_t__) ;
 scalar_t__ acpi_ns_valid_root_prefix (int ) ;

acpi_status
acpi_get_handle(acpi_handle parent,
  acpi_string pathname, acpi_handle * ret_handle)
{
 acpi_status status;
 struct acpi_namespace_node *node = ((void*)0);
 struct acpi_namespace_node *prefix_node = ((void*)0);

 ACPI_FUNCTION_ENTRY();



 if (!ret_handle || !pathname) {
  return (AE_BAD_PARAMETER);
 }



 if (parent) {
  prefix_node = acpi_ns_map_handle_to_node(parent);
  if (!prefix_node) {
   return (AE_BAD_PARAMETER);
  }
 }
 if (acpi_ns_valid_root_prefix(pathname[0])) {





  if (!ACPI_STRCMP(pathname, ACPI_NS_ROOT_PATH)) {
   *ret_handle =
       acpi_ns_convert_entry_to_handle(acpi_gbl_root_node);
   return (AE_OK);
  }
 } else if (!prefix_node) {



  return (AE_BAD_PARAMETER);
 }



 status =
     acpi_ns_get_node(prefix_node, pathname, ACPI_NS_NO_UPSEARCH, &node);
 if (ACPI_SUCCESS(status)) {
  *ret_handle = acpi_ns_convert_entry_to_handle(node);
 }

 return (status);
}
