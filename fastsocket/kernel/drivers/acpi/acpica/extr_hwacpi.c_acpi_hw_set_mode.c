
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int acpi_status ;
struct TYPE_2__ {int acpi_disable; int smi_command; int acpi_enable; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;


 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_NO_HARDWARE_RESPONSE ;
 int AE_OK ;
 TYPE_1__ acpi_gbl_FADT ;
 int acpi_hw_get_mode () ;
 int acpi_hw_write_port (int ,int,int) ;
 int acpi_os_stall (int) ;
 int hw_set_mode ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_hw_set_mode(u32 mode)
{

 acpi_status status;
 u32 retry;

 ACPI_FUNCTION_TRACE(hw_set_mode);





 if (!acpi_gbl_FADT.smi_command) {
  ACPI_ERROR((AE_INFO,
       "No SMI_CMD in FADT, mode transition failed"));
  return_ACPI_STATUS(AE_NO_HARDWARE_RESPONSE);
 }
 if (!acpi_gbl_FADT.acpi_enable && !acpi_gbl_FADT.acpi_disable) {
  ACPI_ERROR((AE_INFO,
       "No ACPI mode transition supported in this system "
       "(enable/disable both zero)"));
  return_ACPI_STATUS(AE_OK);
 }

 switch (mode) {
 case 129:



  status = acpi_hw_write_port(acpi_gbl_FADT.smi_command,
         (u32) acpi_gbl_FADT.acpi_enable, 8);
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Attempting to enable ACPI mode\n"));
  break;

 case 128:





  status = acpi_hw_write_port(acpi_gbl_FADT.smi_command,
         (u32) acpi_gbl_FADT.acpi_disable,
         8);
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Attempting to enable Legacy (non-ACPI) mode\n"));
  break;

 default:
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status,
    "Could not write ACPI mode change"));
  return_ACPI_STATUS(status);
 }





 retry = 3000;
 while (retry) {
  if (acpi_hw_get_mode() == mode) {
   ACPI_DEBUG_PRINT((ACPI_DB_INFO,
       "Mode %X successfully enabled\n",
       mode));
   return_ACPI_STATUS(AE_OK);
  }
  acpi_os_stall(1000);
  retry--;
 }

 ACPI_ERROR((AE_INFO, "Hardware did not change modes"));
 return_ACPI_STATUS(AE_NO_HARDWARE_RESPONSE);
}
