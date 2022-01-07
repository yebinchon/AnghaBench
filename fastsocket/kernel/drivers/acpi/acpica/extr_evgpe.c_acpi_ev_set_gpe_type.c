
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_gpe_event_info {int flags; } ;
typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GPE_TYPE_MASK ;



 int AE_BAD_PARAMETER ;
 int acpi_ev_disable_gpe (struct acpi_gpe_event_info*) ;
 int ev_set_gpe_type ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_set_gpe_type(struct acpi_gpe_event_info *gpe_event_info, u8 type)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_set_gpe_type);



 switch (type) {
 case 129:
 case 130:
 case 128:
  break;

 default:
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }



 status = acpi_ev_disable_gpe(gpe_event_info);



 gpe_event_info->flags &= ~ACPI_GPE_TYPE_MASK;
 gpe_event_info->flags |= type;
 return_ACPI_STATUS(status);
}
