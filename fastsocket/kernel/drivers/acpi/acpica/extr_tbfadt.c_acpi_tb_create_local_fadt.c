
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_table_header {int revision; } ;
struct acpi_table_fadt {int dummy; } ;


 int ACPI_MEMCPY (int *,struct acpi_table_header*,int ) ;
 int ACPI_MEMSET (int *,int ,int) ;
 int ACPI_MIN (int,int) ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int acpi_gbl_FADT ;
 int acpi_tb_convert_fadt () ;
 int acpi_tb_setup_fadt_registers () ;
 int acpi_tb_validate_fadt () ;

void acpi_tb_create_local_fadt(struct acpi_table_header *table, u32 length)
{





 if (length > sizeof(struct acpi_table_fadt)) {
  ACPI_WARNING((AE_INFO,
         "FADT (revision %u) is longer than ACPI 2.0 version, "
         "truncating length 0x%X to 0x%X",
         table->revision, length,
         (u32)sizeof(struct acpi_table_fadt)));
 }



 ACPI_MEMSET(&acpi_gbl_FADT, 0, sizeof(struct acpi_table_fadt));



 ACPI_MEMCPY(&acpi_gbl_FADT, table,
      ACPI_MIN(length, sizeof(struct acpi_table_fadt)));



 acpi_tb_convert_fadt();



 acpi_tb_validate_fadt();



 acpi_tb_setup_fadt_registers();
}
