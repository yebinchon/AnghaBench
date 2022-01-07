
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int count; } ;


 int FALSE ;
 int TRUE ;
 TYPE_1__ acpi_gbl_root_table_list ;

u8 acpi_tb_tables_loaded(void)
{

 if (acpi_gbl_root_table_list.count >= 3) {
  return (TRUE);
 }

 return (FALSE);
}
