
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct acpi_parse_state {scalar_t__ aml; TYPE_2__* scope; } ;
struct TYPE_3__ {scalar_t__ arg_end; int arg_count; } ;
struct TYPE_4__ {TYPE_1__ parse_scope; } ;



u8 acpi_ps_has_completed_scope(struct acpi_parse_state * parser_state)
{

 return ((u8)
  ((parser_state->aml >= parser_state->scope->parse_scope.arg_end
    || !parser_state->scope->parse_scope.arg_count)));
}
