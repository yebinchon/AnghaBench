
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
union acpi_parse_object {TYPE_1__ named; } ;


 int ACPI_ROOT_NAME ;
 int AML_SCOPE_OP ;
 union acpi_parse_object* acpi_ps_alloc_op (int ) ;

union acpi_parse_object *acpi_ps_create_scope_op(void)
{
 union acpi_parse_object *scope_op;

 scope_op = acpi_ps_alloc_op(AML_SCOPE_OP);
 if (!scope_op) {
  return (((void*)0));
 }

 scope_op->named.name = ACPI_ROOT_NAME;
 return (scope_op);
}
