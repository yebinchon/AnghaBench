
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_table_header {int signature; } ;


 scalar_t__ ACPI_COMPARE_NAME (int ,int ) ;
 int ACPI_SIG_DSDT ;
 int ACPI_SIG_PSDT ;
 int ACPI_SIG_SSDT ;
 int FALSE ;
 int TRUE ;

u8 acpi_ut_is_aml_table(struct acpi_table_header *table)
{



 if (ACPI_COMPARE_NAME(table->signature, ACPI_SIG_DSDT) ||
     ACPI_COMPARE_NAME(table->signature, ACPI_SIG_PSDT) ||
     ACPI_COMPARE_NAME(table->signature, ACPI_SIG_SSDT)) {
  return (TRUE);
 }

 return (FALSE);
}
