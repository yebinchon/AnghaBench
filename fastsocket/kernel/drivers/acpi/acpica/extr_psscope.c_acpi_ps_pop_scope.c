
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union acpi_parse_object {int dummy; } acpi_parse_object ;
struct TYPE_4__ {int pkg_end; scalar_t__ arg_count; scalar_t__ arg_list; union acpi_parse_object* op; } ;
struct TYPE_3__ {scalar_t__ next; } ;
union acpi_generic_state {TYPE_2__ parse_scope; TYPE_1__ common; } ;
typedef scalar_t__ u32 ;
struct acpi_parse_state {int pkg_end; union acpi_generic_state* scope; } ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_ut_delete_generic_state (union acpi_generic_state*) ;
 union acpi_generic_state* acpi_ut_pop_generic_state (union acpi_generic_state**) ;
 int ps_pop_scope ;
 int return_VOID ;

void
acpi_ps_pop_scope(struct acpi_parse_state *parser_state,
    union acpi_parse_object **op, u32 * arg_list, u32 * arg_count)
{
 union acpi_generic_state *scope = parser_state->scope;

 ACPI_FUNCTION_TRACE(ps_pop_scope);



 if (scope->common.next) {
  scope = acpi_ut_pop_generic_state(&parser_state->scope);



  *op = scope->parse_scope.op;
  *arg_list = scope->parse_scope.arg_list;
  *arg_count = scope->parse_scope.arg_count;
  parser_state->pkg_end = scope->parse_scope.pkg_end;



  acpi_ut_delete_generic_state(scope);
 } else {


  *op = ((void*)0);
  *arg_list = 0;
  *arg_count = 0;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_PARSE,
     "Popped Op %p Args %X\n", *op, *arg_count));
 return_VOID;
}
