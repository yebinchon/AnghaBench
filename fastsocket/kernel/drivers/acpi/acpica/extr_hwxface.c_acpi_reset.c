
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_generic_address {scalar_t__ space_id; scalar_t__ address; } ;
typedef int acpi_status ;
typedef int acpi_io_address ;
struct TYPE_2__ {int flags; int reset_value; struct acpi_generic_address reset_register; } ;


 scalar_t__ ACPI_ADR_SPACE_SYSTEM_IO ;
 int ACPI_FADT_RESET_REGISTER ;
 int ACPI_FUNCTION_TRACE (int (*) ()) ;
 int AE_NOT_EXIST ;
 TYPE_1__ acpi_gbl_FADT ;
 int acpi_hw_write (int ,struct acpi_generic_address*) ;
 int acpi_os_write_port (int ,int ,int) ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_reset(void)
{
 struct acpi_generic_address *reset_reg;
 acpi_status status;

 ACPI_FUNCTION_TRACE(acpi_reset);

 reset_reg = &acpi_gbl_FADT.reset_register;



 if (!(acpi_gbl_FADT.flags & ACPI_FADT_RESET_REGISTER) ||
     !reset_reg->address) {
  return_ACPI_STATUS(AE_NOT_EXIST);
 }

 if (reset_reg->space_id == ACPI_ADR_SPACE_SYSTEM_IO) {






  status =
      acpi_os_write_port((acpi_io_address) reset_reg->address,
           acpi_gbl_FADT.reset_value, 8);
 } else {


  status = acpi_hw_write(acpi_gbl_FADT.reset_value, reset_reg);
 }

 return_ACPI_STATUS(status);
}
