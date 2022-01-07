
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_NAMESPACE ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_ALREADY_EXISTS ;
 int TRUE ;
 int acpi_ds_initialize_objects (int ,struct acpi_namespace_node*) ;
 int acpi_ns_parse_table (int ,struct acpi_namespace_node*) ;
 int acpi_tb_allocate_owner_id (int ) ;
 scalar_t__ acpi_tb_is_table_loaded (int ) ;
 int acpi_tb_release_owner_id (int ) ;
 int acpi_tb_set_table_loaded_flag (int ,int ) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int ns_load_table ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ns_load_table(u32 table_index, struct acpi_namespace_node *node)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ns_load_table);
 status = acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 if (acpi_tb_is_table_loaded(table_index)) {
  status = AE_ALREADY_EXISTS;
  goto unlock;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "**** Loading table into namespace ****\n"));

 status = acpi_tb_allocate_owner_id(table_index);
 if (ACPI_FAILURE(status)) {
  goto unlock;
 }

 status = acpi_ns_parse_table(table_index, node);
 if (ACPI_SUCCESS(status)) {
  acpi_tb_set_table_loaded_flag(table_index, TRUE);
 } else {
  (void)acpi_tb_release_owner_id(table_index);
 }

      unlock:
 (void)acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);

 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }







 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "**** Begin Table Method Parsing and Object Initialization\n"));

 status = acpi_ds_initialize_objects(table_index, node);

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "**** Completed Table Method Parsing and Object Initialization\n"));

 return_ACPI_STATUS(status);
}
