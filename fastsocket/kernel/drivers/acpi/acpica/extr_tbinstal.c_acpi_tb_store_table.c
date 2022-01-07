
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct acpi_table_header {int signature; } ;
typedef int acpi_status ;
typedef int acpi_physical_address ;
struct TYPE_4__ {size_t count; size_t size; TYPE_1__* tables; } ;
struct TYPE_3__ {size_t length; int signature; int flags; scalar_t__ owner_id; struct acpi_table_header* pointer; int address; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_MOVE_32_TO_32 (int *,int ) ;
 int AE_OK ;
 TYPE_2__ acpi_gbl_root_table_list ;
 int acpi_tb_resize_root_table_list () ;

acpi_status
acpi_tb_store_table(acpi_physical_address address,
      struct acpi_table_header *table,
      u32 length, u8 flags, u32 *table_index)
{
 acpi_status status = AE_OK;



 if (acpi_gbl_root_table_list.count >= acpi_gbl_root_table_list.size) {
  status = acpi_tb_resize_root_table_list();
  if (ACPI_FAILURE(status)) {
   return (status);
  }
 }



 acpi_gbl_root_table_list.tables[acpi_gbl_root_table_list.count].
     address = address;
 acpi_gbl_root_table_list.tables[acpi_gbl_root_table_list.count].
     pointer = table;
 acpi_gbl_root_table_list.tables[acpi_gbl_root_table_list.count].length =
     length;
 acpi_gbl_root_table_list.tables[acpi_gbl_root_table_list.count].
     owner_id = 0;
 acpi_gbl_root_table_list.tables[acpi_gbl_root_table_list.count].flags =
     flags;

 ACPI_MOVE_32_TO_32(&
      (acpi_gbl_root_table_list.
       tables[acpi_gbl_root_table_list.count].signature),
      table->signature);

 *table_index = acpi_gbl_root_table_list.count;
 acpi_gbl_root_table_list.count++;
 return (status);
}
