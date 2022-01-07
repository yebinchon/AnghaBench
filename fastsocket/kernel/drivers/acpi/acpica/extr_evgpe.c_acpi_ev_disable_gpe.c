
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_gpe_event_info {int flags; } ;
typedef int acpi_status ;


 int ACPI_CLEAR_BIT (int,int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GPE_DISABLE ;
 int ACPI_GPE_RUN_ENABLED ;
 int ACPI_GPE_TYPE_MASK ;



 int ACPI_GPE_WAKE_ENABLED ;
 int acpi_ev_update_gpe_enable_masks (struct acpi_gpe_event_info*,int ) ;
 int acpi_hw_low_disable_gpe (struct acpi_gpe_event_info*) ;
 int ev_disable_gpe ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ev_disable_gpe(struct acpi_gpe_event_info *gpe_event_info)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_disable_gpe);



 status =
     acpi_ev_update_gpe_enable_masks(gpe_event_info, ACPI_GPE_DISABLE);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 switch (gpe_event_info->flags & ACPI_GPE_TYPE_MASK) {
 case 129:
  ACPI_CLEAR_BIT(gpe_event_info->flags, ACPI_GPE_WAKE_ENABLED);
  break;

 case 128:
  ACPI_CLEAR_BIT(gpe_event_info->flags, ACPI_GPE_WAKE_ENABLED);



 case 130:



  ACPI_CLEAR_BIT(gpe_event_info->flags, ACPI_GPE_RUN_ENABLED);
  break;

 default:
  break;
 }
 status = acpi_hw_low_disable_gpe(gpe_event_info);
 return_ACPI_STATUS(status);
}
