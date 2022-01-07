
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ integer; } ;
struct acpi_namespace_node {TYPE_1__ name; } ;
struct TYPE_4__ {scalar_t__ total_allocated; scalar_t__ total_freed; scalar_t__ max_occupied; } ;


 int ACPI_DESC_TYPE_NAMED ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MEM_TRACKING (int ) ;
 int ACPI_SET_DESCRIPTOR_TYPE (struct acpi_namespace_node*,int ) ;
 int acpi_gbl_namespace_cache ;
 TYPE_2__* acpi_gbl_ns_node_list ;
 struct acpi_namespace_node* acpi_os_acquire_object (int ) ;
 int ns_create_node ;
 int return_PTR (struct acpi_namespace_node*) ;

struct acpi_namespace_node *acpi_ns_create_node(u32 name)
{
 struct acpi_namespace_node *node;




 ACPI_FUNCTION_TRACE(ns_create_node);

 node = acpi_os_acquire_object(acpi_gbl_namespace_cache);
 if (!node) {
  return_PTR(((void*)0));
 }

 ACPI_MEM_TRACKING(acpi_gbl_ns_node_list->total_allocated++);
 node->name.integer = name;
 ACPI_SET_DESCRIPTOR_TYPE(node, ACPI_DESC_TYPE_NAMED);
 return_PTR(node);
}
