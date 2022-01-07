
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_namespace_node {scalar_t__ owner_id; struct acpi_namespace_node* parent; scalar_t__ child; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_owner_id ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,scalar_t__) ;
 int ACPI_MTX_NAMESPACE ;
 struct acpi_namespace_node* acpi_gbl_root_node ;
 int acpi_ns_delete_children (struct acpi_namespace_node*) ;
 int acpi_ns_detach_object (struct acpi_namespace_node*) ;
 struct acpi_namespace_node* acpi_ns_get_next_node (struct acpi_namespace_node*,struct acpi_namespace_node*) ;
 int acpi_ns_remove_node (struct acpi_namespace_node*) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int ns_delete_namespace_by_owner ;
 int return_VOID ;

void acpi_ns_delete_namespace_by_owner(acpi_owner_id owner_id)
{
 struct acpi_namespace_node *child_node;
 struct acpi_namespace_node *deletion_node;
 struct acpi_namespace_node *parent_node;
 u32 level;
 acpi_status status;

 ACPI_FUNCTION_TRACE_U32(ns_delete_namespace_by_owner, owner_id);

 if (owner_id == 0) {
  return_VOID;
 }



 status = acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
 if (ACPI_FAILURE(status)) {
  return_VOID;
 }

 deletion_node = ((void*)0);
 parent_node = acpi_gbl_root_node;
 child_node = ((void*)0);
 level = 1;





 while (level > 0) {




  child_node = acpi_ns_get_next_node(parent_node, child_node);

  if (deletion_node) {
   acpi_ns_delete_children(deletion_node);
   acpi_ns_remove_node(deletion_node);
   deletion_node = ((void*)0);
  }

  if (child_node) {
   if (child_node->owner_id == owner_id) {



    acpi_ns_detach_object(child_node);
   }



   if (child_node->child) {




    level++;
    parent_node = child_node;
    child_node = ((void*)0);
   } else if (child_node->owner_id == owner_id) {
    deletion_node = child_node;
   }
  } else {




   level--;
   if (level != 0) {
    if (parent_node->owner_id == owner_id) {
     deletion_node = parent_node;
    }
   }



   child_node = parent_node;



   parent_node = parent_node->parent;
  }
 }

 (void)acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);
 return_VOID;
}
