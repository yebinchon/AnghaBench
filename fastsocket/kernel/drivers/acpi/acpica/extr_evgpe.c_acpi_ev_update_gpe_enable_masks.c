
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct acpi_gpe_register_info {int base_gpe_number; int enable_for_run; int enable_for_wake; } ;
struct acpi_gpe_event_info {int gpe_number; int flags; struct acpi_gpe_register_info* register_info; } ;
typedef int acpi_status ;


 int ACPI_CLEAR_BIT (int ,scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_GPE_DISABLE ;
 int ACPI_GPE_TYPE_MASK ;



 int ACPI_SET_BIT (int ,scalar_t__) ;
 int AE_BAD_PARAMETER ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 int ev_update_gpe_enable_masks ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_update_gpe_enable_masks(struct acpi_gpe_event_info *gpe_event_info,
    u8 type)
{
 struct acpi_gpe_register_info *gpe_register_info;
 u8 register_bit;

 ACPI_FUNCTION_TRACE(ev_update_gpe_enable_masks);

 gpe_register_info = gpe_event_info->register_info;
 if (!gpe_register_info) {
  return_ACPI_STATUS(AE_NOT_EXIST);
 }

 register_bit = (u8)
     (1 <<
      (gpe_event_info->gpe_number - gpe_register_info->base_gpe_number));



 if (type == ACPI_GPE_DISABLE) {
  ACPI_CLEAR_BIT(gpe_register_info->enable_for_wake,
          register_bit);
  ACPI_CLEAR_BIT(gpe_register_info->enable_for_run, register_bit);
  return_ACPI_STATUS(AE_OK);
 }



 switch (gpe_event_info->flags & ACPI_GPE_TYPE_MASK) {
 case 129:
  ACPI_SET_BIT(gpe_register_info->enable_for_wake, register_bit);
  ACPI_CLEAR_BIT(gpe_register_info->enable_for_run, register_bit);
  break;

 case 130:
  ACPI_CLEAR_BIT(gpe_register_info->enable_for_wake,
          register_bit);
  ACPI_SET_BIT(gpe_register_info->enable_for_run, register_bit);
  break;

 case 128:
  ACPI_SET_BIT(gpe_register_info->enable_for_wake, register_bit);
  ACPI_SET_BIT(gpe_register_info->enable_for_run, register_bit);
  break;

 default:
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 return_ACPI_STATUS(AE_OK);
}
