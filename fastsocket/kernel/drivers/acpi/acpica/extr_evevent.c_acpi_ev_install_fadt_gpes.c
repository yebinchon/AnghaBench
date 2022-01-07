
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_NAMESPACE ;
 int AE_OK ;
 int acpi_ev_initialize_gpe_block (int ,int ) ;
 int acpi_gbl_fadt_gpe_device ;
 int * acpi_gbl_gpe_fadt_blocks ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int ev_install_fadt_gpes ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ev_install_fadt_gpes(void)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_install_fadt_gpes);



 status = acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
 if (ACPI_FAILURE(status)) {
  return (status);
 }



 (void)acpi_ev_initialize_gpe_block(acpi_gbl_fadt_gpe_device,
        acpi_gbl_gpe_fadt_blocks[0]);



 (void)acpi_ev_initialize_gpe_block(acpi_gbl_fadt_gpe_device,
        acpi_gbl_gpe_fadt_blocks[1]);

 (void)acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);
 return_ACPI_STATUS(AE_OK);
}
