
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_gpe_event_info {int flags; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GPE_ENABLE ;
 int ACPI_GPE_RUN_ENABLED ;
 int ACPI_GPE_TYPE_MASK ;



 int ACPI_GPE_WAKE_ENABLED ;
 int ACPI_SET_BIT (int,int ) ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int acpi_ev_update_gpe_enable_masks (struct acpi_gpe_event_info*,int ) ;
 int acpi_hw_clear_gpe (struct acpi_gpe_event_info*) ;
 int acpi_hw_write_gpe_enable_reg (struct acpi_gpe_event_info*) ;
 int ev_enable_gpe ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_enable_gpe(struct acpi_gpe_event_info *gpe_event_info,
     u8 write_to_hardware)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_enable_gpe);



 status =
     acpi_ev_update_gpe_enable_masks(gpe_event_info, ACPI_GPE_ENABLE);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 switch (gpe_event_info->flags & ACPI_GPE_TYPE_MASK) {
 case 129:

  ACPI_SET_BIT(gpe_event_info->flags, ACPI_GPE_WAKE_ENABLED);
  break;

 case 128:

  ACPI_SET_BIT(gpe_event_info->flags, ACPI_GPE_WAKE_ENABLED);



 case 130:

  ACPI_SET_BIT(gpe_event_info->flags, ACPI_GPE_RUN_ENABLED);

  if (write_to_hardware) {



   status = acpi_hw_clear_gpe(gpe_event_info);
   if (ACPI_FAILURE(status)) {
    return_ACPI_STATUS(status);
   }



   status = acpi_hw_write_gpe_enable_reg(gpe_event_info);
  }
  break;

 default:
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 return_ACPI_STATUS(AE_OK);
}
