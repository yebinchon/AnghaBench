
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {struct acpi_namespace_node* peer; struct acpi_namespace_node* child; struct acpi_namespace_node* parent; } ;


 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_namespace_node*) ;
 int acpi_ns_delete_node (struct acpi_namespace_node*) ;
 int ns_remove_node ;
 int return_VOID ;

void acpi_ns_remove_node(struct acpi_namespace_node *node)
{
 struct acpi_namespace_node *parent_node;
 struct acpi_namespace_node *prev_node;
 struct acpi_namespace_node *next_node;

 ACPI_FUNCTION_TRACE_PTR(ns_remove_node, node);

 parent_node = node->parent;

 prev_node = ((void*)0);
 next_node = parent_node->child;



 while (next_node != node) {
  prev_node = next_node;
  next_node = next_node->peer;
 }

 if (prev_node) {



  prev_node->peer = node->peer;
 } else {




  parent_node->child = node->peer;
 }



 acpi_ns_delete_node(node);
 return_VOID;
}
