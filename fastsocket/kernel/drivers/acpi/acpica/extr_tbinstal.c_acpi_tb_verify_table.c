
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_desc {int flags; int length; scalar_t__ pointer; int signature; int address; } ;
typedef int acpi_status ;


 int ACPI_COMPARE_NAME (int *,int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_SIG_FACS ;
 int ACPI_TABLE_ORIGIN_MAPPED ;
 int ACPI_TABLE_ORIGIN_MASK ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 scalar_t__ acpi_os_map_memory (int ,int ) ;
 int acpi_tb_verify_checksum (scalar_t__,int ) ;
 int return_ACPI_STATUS (int ) ;
 int tb_verify_table ;

acpi_status acpi_tb_verify_table(struct acpi_table_desc *table_desc)
{
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE(tb_verify_table);



 if (!table_desc->pointer) {
  if ((table_desc->flags & ACPI_TABLE_ORIGIN_MASK) ==
      ACPI_TABLE_ORIGIN_MAPPED) {
   table_desc->pointer =
       acpi_os_map_memory(table_desc->address,
            table_desc->length);
  }
  if (!table_desc->pointer) {
   return_ACPI_STATUS(AE_NO_MEMORY);
  }
 }



 if (!ACPI_COMPARE_NAME(&table_desc->signature, ACPI_SIG_FACS)) {



  status =
      acpi_tb_verify_checksum(table_desc->pointer,
         table_desc->length);
 }

 return_ACPI_STATUS(status);
}
