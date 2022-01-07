
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_BITREG_BUS_MASTER_RLD ;
 int acpi_read_bit_register (int ,int *) ;
 int saved_bm_rld ;

__attribute__((used)) static void acpi_idle_bm_rld_save(void)
{
 acpi_read_bit_register(ACPI_BITREG_BUS_MASTER_RLD, &saved_bm_rld);
}
