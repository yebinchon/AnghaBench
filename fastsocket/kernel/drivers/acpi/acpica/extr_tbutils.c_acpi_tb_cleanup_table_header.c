
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_header {int asl_compiler_id; int oem_table_id; int oem_id; int signature; } ;


 int ACPI_MEMCPY (struct acpi_table_header*,struct acpi_table_header*,int) ;
 int ACPI_NAME_SIZE ;
 int ACPI_OEM_ID_SIZE ;
 int ACPI_OEM_TABLE_ID_SIZE ;
 int acpi_tb_fix_string (int ,int ) ;

__attribute__((used)) static void
acpi_tb_cleanup_table_header(struct acpi_table_header *out_header,
        struct acpi_table_header *header)
{

 ACPI_MEMCPY(out_header, header, sizeof(struct acpi_table_header));

 acpi_tb_fix_string(out_header->signature, ACPI_NAME_SIZE);
 acpi_tb_fix_string(out_header->oem_id, ACPI_OEM_ID_SIZE);
 acpi_tb_fix_string(out_header->oem_table_id, ACPI_OEM_TABLE_ID_SIZE);
 acpi_tb_fix_string(out_header->asl_compiler_id, ACPI_NAME_SIZE);
}
