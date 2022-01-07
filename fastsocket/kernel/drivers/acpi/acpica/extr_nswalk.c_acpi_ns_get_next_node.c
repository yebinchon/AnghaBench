
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {struct acpi_namespace_node* peer; struct acpi_namespace_node* child; } ;


 int ACPI_FUNCTION_ENTRY () ;

struct acpi_namespace_node *acpi_ns_get_next_node(struct acpi_namespace_node
        *parent_node,
        struct acpi_namespace_node
        *child_node)
{
 ACPI_FUNCTION_ENTRY();

 if (!child_node) {



  return parent_node->child;
 }



 return child_node->peer;
}
