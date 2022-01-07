
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_NAMESPACE ;
 size_t ACPI_NUM_DEFAULT_SPACES ;
 int acpi_ev_execute_reg_methods (int ,int ) ;
 int * acpi_gbl_default_address_spaces ;
 int acpi_gbl_root_node ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int ev_initialize_op_regions ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ev_initialize_op_regions(void)
{
 acpi_status status;
 u32 i;

 ACPI_FUNCTION_TRACE(ev_initialize_op_regions);

 status = acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 for (i = 0; i < ACPI_NUM_DEFAULT_SPACES; i++) {




  status = acpi_ev_execute_reg_methods(acpi_gbl_root_node,
           acpi_gbl_default_address_spaces
           [i]);
 }

 (void)acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);
 return_ACPI_STATUS(status);
}
