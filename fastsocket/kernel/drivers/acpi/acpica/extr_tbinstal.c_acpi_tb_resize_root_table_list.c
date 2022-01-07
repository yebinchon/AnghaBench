
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct acpi_table_desc {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_size ;
struct TYPE_2__ {int flags; scalar_t__ size; struct acpi_table_desc* tables; } ;


 struct acpi_table_desc* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FREE (struct acpi_table_desc*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MEMCPY (struct acpi_table_desc*,struct acpi_table_desc*,int) ;
 int ACPI_ROOT_ALLOW_RESIZE ;
 int ACPI_ROOT_ORIGIN_ALLOCATED ;
 int ACPI_ROOT_TABLE_SIZE_INCREMENT ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_SUPPORT ;
 TYPE_1__ acpi_gbl_root_table_list ;
 int return_ACPI_STATUS (int ) ;
 int tb_resize_root_table_list ;

acpi_status acpi_tb_resize_root_table_list(void)
{
 struct acpi_table_desc *tables;

 ACPI_FUNCTION_TRACE(tb_resize_root_table_list);



 if (!(acpi_gbl_root_table_list.flags & ACPI_ROOT_ALLOW_RESIZE)) {
  ACPI_ERROR((AE_INFO,
       "Resize of Root Table Array is not allowed"));
  return_ACPI_STATUS(AE_SUPPORT);
 }



 tables = ACPI_ALLOCATE_ZEROED(((acpi_size) acpi_gbl_root_table_list.
           size +
           ACPI_ROOT_TABLE_SIZE_INCREMENT) *
          sizeof(struct acpi_table_desc));
 if (!tables) {
  ACPI_ERROR((AE_INFO,
       "Could not allocate new root table array"));
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 if (acpi_gbl_root_table_list.tables) {
  ACPI_MEMCPY(tables, acpi_gbl_root_table_list.tables,
       (acpi_size) acpi_gbl_root_table_list.size *
       sizeof(struct acpi_table_desc));

  if (acpi_gbl_root_table_list.flags & ACPI_ROOT_ORIGIN_ALLOCATED) {
   ACPI_FREE(acpi_gbl_root_table_list.tables);
  }
 }

 acpi_gbl_root_table_list.tables = tables;
 acpi_gbl_root_table_list.size += ACPI_ROOT_TABLE_SIZE_INCREMENT;
 acpi_gbl_root_table_list.flags |= (u8) ACPI_ROOT_ORIGIN_ALLOCATED;

 return_ACPI_STATUS(AE_OK);
}
