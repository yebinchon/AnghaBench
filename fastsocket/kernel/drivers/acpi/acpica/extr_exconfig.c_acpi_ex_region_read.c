
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef int acpi_status ;
typedef scalar_t__ acpi_integer ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_READ ;
 int AE_OK ;
 int acpi_ev_address_space_dispatch (union acpi_operand_object*,int ,scalar_t__,int,scalar_t__*) ;

__attribute__((used)) static acpi_status
acpi_ex_region_read(union acpi_operand_object *obj_desc, u32 length, u8 *buffer)
{
 acpi_status status;
 acpi_integer value;
 u32 region_offset = 0;
 u32 i;



 for (i = 0; i < length; i++) {
  status = acpi_ev_address_space_dispatch(obj_desc, ACPI_READ,
       region_offset, 8,
       &value);
  if (ACPI_FAILURE(status)) {
   return status;
  }

  *buffer = (u8)value;
  buffer++;
  region_offset++;
 }

 return AE_OK;
}
