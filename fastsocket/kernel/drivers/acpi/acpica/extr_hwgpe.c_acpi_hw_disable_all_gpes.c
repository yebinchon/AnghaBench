
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_ev_walk_gpe_list (int ,int *) ;
 int acpi_hw_clear_gpe_block ;
 int acpi_hw_disable_gpe_block ;
 int hw_disable_all_gpes ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_hw_disable_all_gpes(void)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(hw_disable_all_gpes);

 status = acpi_ev_walk_gpe_list(acpi_hw_disable_gpe_block, ((void*)0));
 status = acpi_ev_walk_gpe_list(acpi_hw_clear_gpe_block, ((void*)0));
 return_ACPI_STATUS(status);
}
