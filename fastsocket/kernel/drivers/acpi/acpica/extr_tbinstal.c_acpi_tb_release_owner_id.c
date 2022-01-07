
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
typedef int acpi_status ;
struct TYPE_4__ {size_t count; TYPE_1__* tables; } ;
struct TYPE_3__ {int owner_id; } ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_TABLES ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 TYPE_2__ acpi_gbl_root_table_list ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int acpi_ut_release_owner_id (int *) ;
 int return_ACPI_STATUS (int ) ;
 int tb_release_owner_id ;

acpi_status acpi_tb_release_owner_id(u32 table_index)
{
 acpi_status status = AE_BAD_PARAMETER;

 ACPI_FUNCTION_TRACE(tb_release_owner_id);

 (void)acpi_ut_acquire_mutex(ACPI_MTX_TABLES);
 if (table_index < acpi_gbl_root_table_list.count) {
  acpi_ut_release_owner_id(&
      (acpi_gbl_root_table_list.
       tables[table_index].owner_id));
  status = AE_OK;
 }

 (void)acpi_ut_release_mutex(ACPI_MTX_TABLES);
 return_ACPI_STATUS(status);
}
