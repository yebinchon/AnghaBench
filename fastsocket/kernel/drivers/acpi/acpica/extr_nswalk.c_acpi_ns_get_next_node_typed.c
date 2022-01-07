
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {scalar_t__ type; struct acpi_namespace_node* peer; } ;
typedef scalar_t__ acpi_object_type ;


 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_TYPE_ANY ;
 struct acpi_namespace_node* acpi_ns_get_next_node (struct acpi_namespace_node*,struct acpi_namespace_node*) ;

struct acpi_namespace_node *acpi_ns_get_next_node_typed(acpi_object_type type,
       struct
       acpi_namespace_node
       *parent_node,
       struct
       acpi_namespace_node
       *child_node)
{
 struct acpi_namespace_node *next_node = ((void*)0);

 ACPI_FUNCTION_ENTRY();

 next_node = acpi_ns_get_next_node(parent_node, child_node);




 if (type == ACPI_TYPE_ANY) {



  return (next_node);
 }



 while (next_node) {



  if (next_node->type == type) {
   return (next_node);
  }



  next_node = next_node->peer;
 }



 return (((void*)0));
}
