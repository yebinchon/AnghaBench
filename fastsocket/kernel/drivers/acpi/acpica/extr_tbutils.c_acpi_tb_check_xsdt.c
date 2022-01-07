
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct acpi_table_header {int length; } ;
typedef int acpi_status ;
typedef int acpi_physical_address ;


 int ACPI_CAST_PTR (int,struct acpi_table_header*) ;
 int ACPI_MOVE_64_TO_64 (int *,int) ;
 int AE_INVALID_TABLE_LENGTH ;
 int AE_NO_MEMORY ;
 int AE_NULL_ENTRY ;
 int AE_OK ;
 struct acpi_table_header* acpi_os_map_memory (int ,int) ;
 int acpi_os_unmap_memory (struct acpi_table_header*,int) ;
 int table_entry ;
 int u8 ;

__attribute__((used)) static acpi_status
acpi_tb_check_xsdt(acpi_physical_address address)
{
 struct acpi_table_header *table;
 u32 length;
 u64 xsdt_entry_address;
 u8 *table_entry;
 u32 table_count;
 int i;

 table = acpi_os_map_memory(address, sizeof(struct acpi_table_header));
 if (!table)
  return AE_NO_MEMORY;

 length = table->length;
 acpi_os_unmap_memory(table, sizeof(struct acpi_table_header));
 if (length < sizeof(struct acpi_table_header))
  return AE_INVALID_TABLE_LENGTH;

 table = acpi_os_map_memory(address, length);
 if (!table)
  return AE_NO_MEMORY;


 table_count =
  (u32) ((table->length -
  sizeof(struct acpi_table_header)) / sizeof(u64));
 table_entry =
  ACPI_CAST_PTR(u8, table) + sizeof(struct acpi_table_header);
 for (i = 0; i < table_count; i++) {
  ACPI_MOVE_64_TO_64(&xsdt_entry_address, table_entry);
  if (!xsdt_entry_address) {

   break;
  }
  table_entry += sizeof(u64);
 }
 acpi_os_unmap_memory(table, length);

 if (i < table_count)
  return AE_NULL_ENTRY;
 else
  return AE_OK;
}
