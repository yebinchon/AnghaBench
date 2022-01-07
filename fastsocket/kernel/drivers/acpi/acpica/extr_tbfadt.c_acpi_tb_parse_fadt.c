
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct acpi_table_header {int dummy; } ;
typedef int acpi_physical_address ;
struct TYPE_6__ {scalar_t__ Xfacs; scalar_t__ Xdsdt; } ;
struct TYPE_5__ {TYPE_1__* tables; } ;
struct TYPE_4__ {size_t length; int address; } ;


 int ACPI_SIG_DSDT ;
 int ACPI_SIG_FACS ;
 int ACPI_TABLE_INDEX_DSDT ;
 int ACPI_TABLE_INDEX_FACS ;
 TYPE_3__ acpi_gbl_FADT ;
 TYPE_2__ acpi_gbl_root_table_list ;
 struct acpi_table_header* acpi_os_map_memory (int ,size_t) ;
 int acpi_os_unmap_memory (struct acpi_table_header*,size_t) ;
 int acpi_tb_create_local_fadt (struct acpi_table_header*,size_t) ;
 int acpi_tb_install_table (int ,int ,int ) ;
 int acpi_tb_verify_checksum (struct acpi_table_header*,size_t) ;

void acpi_tb_parse_fadt(u32 table_index)
{
 u32 length;
 struct acpi_table_header *table;
 length = acpi_gbl_root_table_list.tables[table_index].length;

 table =
     acpi_os_map_memory(acpi_gbl_root_table_list.tables[table_index].
          address, length);
 if (!table) {
  return;
 }





 (void)acpi_tb_verify_checksum(table, length);



 acpi_tb_create_local_fadt(table, length);



 acpi_os_unmap_memory(table, length);



 acpi_tb_install_table((acpi_physical_address) acpi_gbl_FADT.Xdsdt,
         ACPI_SIG_DSDT, ACPI_TABLE_INDEX_DSDT);

 acpi_tb_install_table((acpi_physical_address) acpi_gbl_FADT.Xfacs,
         ACPI_SIG_FACS, ACPI_TABLE_INDEX_FACS);
}
