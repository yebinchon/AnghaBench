
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union acpi_parse_object {int dummy; } acpi_parse_object ;
struct acpi_parse_state {TYPE_2__* scope; } ;
struct TYPE_3__ {union acpi_parse_object* op; } ;
struct TYPE_4__ {TYPE_1__ parse_scope; } ;



union acpi_parse_object *acpi_ps_get_parent_scope(struct acpi_parse_state
        *parser_state)
{

 return (parser_state->scope->parse_scope.op);
}
