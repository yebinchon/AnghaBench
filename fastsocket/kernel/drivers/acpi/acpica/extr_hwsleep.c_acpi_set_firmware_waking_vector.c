
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int acpi_status ;
struct TYPE_2__ {int length; int version; scalar_t__ xfirmware_waking_vector; int firmware_waking_vector; } ;


 int ACPI_FUNCTION_TRACE (int (*) (int )) ;
 int AE_OK ;
 TYPE_1__* acpi_gbl_FACS ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_set_firmware_waking_vector(u32 physical_address)
{
 ACPI_FUNCTION_TRACE(acpi_set_firmware_waking_vector);
 acpi_gbl_FACS->firmware_waking_vector = physical_address;



 if ((acpi_gbl_FACS->length > 32) && (acpi_gbl_FACS->version >= 1)) {
  acpi_gbl_FACS->xfirmware_waking_vector = 0;
 }

 return_ACPI_STATUS(AE_OK);
}
