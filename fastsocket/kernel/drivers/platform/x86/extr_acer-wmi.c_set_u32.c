
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int acpi_status ;
struct TYPE_4__ {int capability; int type; } ;




 int ACER_CAP_BLUETOOTH ;
 int ACER_CAP_MAILLED ;
 int ACER_CAP_WIRELESS ;

 int ACPI_FAILURE (int ) ;
 int AE_BAD_PARAMETER ;
 int AMW0_set_u32 (int,int,TYPE_1__*) ;
 int WMID_set_u32 (int,int,TYPE_1__*) ;
 TYPE_1__* interface ;

__attribute__((used)) static acpi_status set_u32(u32 value, u32 cap)
{
 acpi_status status;

 if (interface->capability & cap) {
  switch (interface->type) {
  case 130:
   return AMW0_set_u32(value, cap, interface);
  case 129:
   if (cap == ACER_CAP_MAILLED)
    return AMW0_set_u32(value, cap, interface);







   if (cap == ACER_CAP_WIRELESS ||
    cap == ACER_CAP_BLUETOOTH) {
    status = WMID_set_u32(value, cap, interface);
    if (ACPI_FAILURE(status))
     return status;

    return AMW0_set_u32(value, cap, interface);
   }
  case 128:
   return WMID_set_u32(value, cap, interface);
  default:
   return AE_BAD_PARAMETER;
  }
 }
 return AE_BAD_PARAMETER;
}
