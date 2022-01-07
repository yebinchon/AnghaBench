
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int ACPI_BITREG_BUS_MASTER_RLD ;
 int acpi_read_bit_register (int ,scalar_t__*) ;
 int acpi_write_bit_register (int ,scalar_t__) ;
 scalar_t__ saved_bm_rld ;

__attribute__((used)) static void acpi_idle_bm_rld_restore(void)
{
 u32 resumed_bm_rld;

 acpi_read_bit_register(ACPI_BITREG_BUS_MASTER_RLD, &resumed_bm_rld);

 if (resumed_bm_rld != saved_bm_rld)
  acpi_write_bit_register(ACPI_BITREG_BUS_MASTER_RLD, saved_bm_rld);
}
