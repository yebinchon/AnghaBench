
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_generic_state {int dummy; } acpi_generic_state ;
struct acpi_parse_state {scalar_t__ scope; } ;


 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_parse_state*) ;
 int acpi_ut_delete_generic_state (union acpi_generic_state*) ;
 union acpi_generic_state* acpi_ut_pop_generic_state (scalar_t__*) ;
 int ps_cleanup_scope ;
 int return_VOID ;

void acpi_ps_cleanup_scope(struct acpi_parse_state *parser_state)
{
 union acpi_generic_state *scope;

 ACPI_FUNCTION_TRACE_PTR(ps_cleanup_scope, parser_state);

 if (!parser_state) {
  return_VOID;
 }



 while (parser_state->scope) {
  scope = acpi_ut_pop_generic_state(&parser_state->scope);
  acpi_ut_delete_generic_state(scope);
 }

 return_VOID;
}
