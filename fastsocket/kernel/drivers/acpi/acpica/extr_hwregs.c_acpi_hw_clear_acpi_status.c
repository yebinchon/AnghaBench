
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int acpi_status ;
typedef int acpi_cpu_flags ;
struct TYPE_2__ {int address; } ;


 int ACPI_BITMASK_ALL_FIXED_STATUS ;
 int ACPI_DB_IO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_REGISTER_PM1_STATUS ;
 int acpi_ev_walk_gpe_list (int ,int *) ;
 int acpi_gbl_hardware_lock ;
 TYPE_1__ acpi_gbl_xpm1a_status ;
 int acpi_hw_clear_gpe_block ;
 int acpi_hw_register_write (int ,int ) ;
 int acpi_os_acquire_lock (int ) ;
 int acpi_os_release_lock (int ,int ) ;
 int hw_clear_acpi_status ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_hw_clear_acpi_status(void)
{
 acpi_status status;
 acpi_cpu_flags lock_flags = 0;

 ACPI_FUNCTION_TRACE(hw_clear_acpi_status);

 ACPI_DEBUG_PRINT((ACPI_DB_IO, "About to write %04X to %8.8X%8.8X\n",
     ACPI_BITMASK_ALL_FIXED_STATUS,
     ACPI_FORMAT_UINT64(acpi_gbl_xpm1a_status.address)));

 lock_flags = acpi_os_acquire_lock(acpi_gbl_hardware_lock);



 status = acpi_hw_register_write(ACPI_REGISTER_PM1_STATUS,
     ACPI_BITMASK_ALL_FIXED_STATUS);
 if (ACPI_FAILURE(status)) {
  goto unlock_and_exit;
 }



 status = acpi_ev_walk_gpe_list(acpi_hw_clear_gpe_block, ((void*)0));

      unlock_and_exit:
 acpi_os_release_lock(acpi_gbl_hardware_lock, lock_flags);
 return_ACPI_STATUS(status);
}
