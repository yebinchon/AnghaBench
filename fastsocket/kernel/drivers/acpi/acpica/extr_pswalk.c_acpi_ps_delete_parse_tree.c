
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {union acpi_parse_object* parent; union acpi_parse_object* next; } ;
union acpi_parse_object {TYPE_1__ common; } ;


 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_parse_object*) ;
 int acpi_ps_free_op (union acpi_parse_object*) ;
 union acpi_parse_object* acpi_ps_get_arg (union acpi_parse_object*,int ) ;
 int ps_delete_parse_tree ;
 int return_VOID ;

void acpi_ps_delete_parse_tree(union acpi_parse_object *subtree_root)
{
 union acpi_parse_object *op = subtree_root;
 union acpi_parse_object *next = ((void*)0);
 union acpi_parse_object *parent = ((void*)0);

 ACPI_FUNCTION_TRACE_PTR(ps_delete_parse_tree, subtree_root);



 while (op) {



  if (op != parent) {



   next = acpi_ps_get_arg(op, 0);
   if (next) {



    op = next;
    continue;
   }
  }



  next = op->common.next;
  parent = op->common.parent;

  acpi_ps_free_op(op);



  if (op == subtree_root) {
   return_VOID;
  }
  if (next) {
   op = next;
  } else {
   op = parent;
  }
 }

 return_VOID;
}
