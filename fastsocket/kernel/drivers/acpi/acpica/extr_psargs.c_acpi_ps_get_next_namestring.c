
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_parse_state {int* aml; } ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_NAME_SIZE ;


 scalar_t__ acpi_ps_is_prefix_char (int) ;
 int ps_get_next_namestring ;
 int return_PTR (char*) ;

char *acpi_ps_get_next_namestring(struct acpi_parse_state *parser_state)
{
 u8 *start = parser_state->aml;
 u8 *end = parser_state->aml;

 ACPI_FUNCTION_TRACE(ps_get_next_namestring);



 while (acpi_ps_is_prefix_char(*end)) {
  end++;
 }



 switch (*end) {
 case 0:



  if (end == start) {
   start = ((void*)0);
  }
  end++;
  break;

 case 129:



  end += 1 + (2 * ACPI_NAME_SIZE);
  break;

 case 128:



  end += 2 + (*(end + 1) * ACPI_NAME_SIZE);
  break;

 default:



  end += ACPI_NAME_SIZE;
  break;
 }

 parser_state->aml = end;
 return_PTR((char *)start);
}
