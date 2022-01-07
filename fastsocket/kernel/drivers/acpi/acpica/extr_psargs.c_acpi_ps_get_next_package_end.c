
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct acpi_parse_state {int * aml; } ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_ps_get_next_package_length (struct acpi_parse_state*) ;
 int ps_get_next_package_end ;
 int return_PTR (int *) ;

u8 *acpi_ps_get_next_package_end(struct acpi_parse_state *parser_state)
{
 u8 *start = parser_state->aml;
 u32 package_length;

 ACPI_FUNCTION_TRACE(ps_get_next_package_end);



 package_length = acpi_ps_get_next_package_length(parser_state);

 return_PTR(start + package_length);
}
