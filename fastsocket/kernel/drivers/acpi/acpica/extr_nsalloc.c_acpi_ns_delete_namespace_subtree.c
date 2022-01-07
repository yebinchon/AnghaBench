
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct acpi_namespace_node {struct acpi_namespace_node* parent; scalar_t__ child; } ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_ns_delete_children (struct acpi_namespace_node*) ;
 int acpi_ns_detach_object (struct acpi_namespace_node*) ;
 struct acpi_namespace_node* acpi_ns_get_next_node (struct acpi_namespace_node*,struct acpi_namespace_node*) ;
 int ns_delete_namespace_subtree ;
 int return_VOID ;

void acpi_ns_delete_namespace_subtree(struct acpi_namespace_node *parent_node)
{
 struct acpi_namespace_node *child_node = ((void*)0);
 u32 level = 1;

 ACPI_FUNCTION_TRACE(ns_delete_namespace_subtree);

 if (!parent_node) {
  return_VOID;
 }





 while (level > 0) {



  child_node = acpi_ns_get_next_node(parent_node, child_node);
  if (child_node) {



   acpi_ns_detach_object(child_node);



   if (child_node->child) {




    level++;
    parent_node = child_node;
    child_node = ((void*)0);
   }
  } else {




   level--;





   acpi_ns_delete_children(parent_node);



   child_node = parent_node;



   parent_node = parent_node->parent;
  }
 }

 return_VOID;
}
