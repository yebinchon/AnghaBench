
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_desc {int flags; int * pointer; int length; } ;


 int ACPI_FREE (int *) ;


 int ACPI_TABLE_ORIGIN_MASK ;
 int acpi_os_unmap_memory (int *,int ) ;

void acpi_tb_delete_table(struct acpi_table_desc *table_desc)
{

 if (!table_desc->pointer) {
  return;
 }
 switch (table_desc->flags & ACPI_TABLE_ORIGIN_MASK) {
 case 128:
  acpi_os_unmap_memory(table_desc->pointer, table_desc->length);
  break;
 case 129:
  ACPI_FREE(table_desc->pointer);
  break;
 default:;
 }

 table_desc->pointer = ((void*)0);
}
