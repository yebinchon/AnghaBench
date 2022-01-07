
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_STATE_S5 ;
 int acpi_disable_all_gpes () ;
 int acpi_sleep_prepare (int ) ;

__attribute__((used)) static void acpi_power_off_prepare(void)
{

 acpi_sleep_prepare(ACPI_STATE_S5);
 acpi_disable_all_gpes();
}
