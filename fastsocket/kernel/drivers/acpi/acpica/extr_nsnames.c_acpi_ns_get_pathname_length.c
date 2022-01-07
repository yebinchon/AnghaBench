
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {struct acpi_namespace_node* parent; } ;
typedef int acpi_size ;


 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (struct acpi_namespace_node*) ;
 scalar_t__ ACPI_PATH_SEGMENT_LENGTH ;
 int AE_INFO ;
 struct acpi_namespace_node* acpi_gbl_root_node ;

acpi_size acpi_ns_get_pathname_length(struct acpi_namespace_node *node)
{
 acpi_size size;
 struct acpi_namespace_node *next_node;

 ACPI_FUNCTION_ENTRY();





 size = 0;
 next_node = node;

 while (next_node && (next_node != acpi_gbl_root_node)) {
  if (ACPI_GET_DESCRIPTOR_TYPE(next_node) != ACPI_DESC_TYPE_NAMED) {
   ACPI_ERROR((AE_INFO,
        "Invalid Namespace Node (%p) while traversing namespace",
        next_node));
   return 0;
  }
  size += ACPI_PATH_SEGMENT_LENGTH;
  next_node = next_node->parent;
 }

 if (!size) {
  size = 1;
 }

 return (size + 1);
}
