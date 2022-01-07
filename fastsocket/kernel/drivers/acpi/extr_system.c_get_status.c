
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int acpi_handle ;
typedef int acpi_event_status ;


 int ACPI_EXCEPTION (int ) ;
 int ACPI_NOT_ISR ;
 scalar_t__ ACPI_NUM_FIXED_EVENTS ;
 int AE_INFO ;
 int AE_NOT_FOUND ;
 int acpi_get_event_status (scalar_t__,int *) ;
 int acpi_get_gpe_device (scalar_t__,int *) ;
 int acpi_get_gpe_status (int ,scalar_t__,int ,int *) ;
 scalar_t__ num_gpes ;

__attribute__((used)) static int get_status(u32 index, acpi_event_status *status, acpi_handle *handle)
{
 int result = 0;

 if (index >= num_gpes + ACPI_NUM_FIXED_EVENTS)
  goto end;

 if (index < num_gpes) {
  result = acpi_get_gpe_device(index, handle);
  if (result) {
   ACPI_EXCEPTION((AE_INFO, AE_NOT_FOUND,
    "Invalid GPE 0x%x\n", index));
   goto end;
  }
  result = acpi_get_gpe_status(*handle, index,
      ACPI_NOT_ISR, status);
 } else if (index < (num_gpes + ACPI_NUM_FIXED_EVENTS))
  result = acpi_get_event_status(index - num_gpes, status);

end:
 return result;
}
