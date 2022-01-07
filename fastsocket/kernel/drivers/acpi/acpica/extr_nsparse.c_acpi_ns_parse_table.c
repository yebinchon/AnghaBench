
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IMODE_LOAD_PASS1 ;
 int ACPI_IMODE_LOAD_PASS2 ;
 int acpi_ns_one_complete_parse (int ,int ,struct acpi_namespace_node*) ;
 int ns_parse_table ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ns_parse_table(u32 table_index, struct acpi_namespace_node *start_node)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ns_parse_table);
 ACPI_DEBUG_PRINT((ACPI_DB_PARSE, "**** Start pass 1\n"));
 status = acpi_ns_one_complete_parse(ACPI_IMODE_LOAD_PASS1,
         table_index, start_node);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }
 ACPI_DEBUG_PRINT((ACPI_DB_PARSE, "**** Start pass 2\n"));
 status = acpi_ns_one_complete_parse(ACPI_IMODE_LOAD_PASS2,
         table_index, start_node);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 return_ACPI_STATUS(status);
}
