
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int acpi_status ;
struct TYPE_4__ {int type; } ;




 int ACER_CAP_MAILLED ;

 int AE_ERROR ;
 int AMW0_get_u32 (int *,int ,TYPE_1__*) ;
 int WMID_get_u32 (int *,int ,TYPE_1__*) ;
 TYPE_1__* interface ;

__attribute__((used)) static acpi_status get_u32(u32 *value, u32 cap)
{
 acpi_status status = AE_ERROR;

 switch (interface->type) {
 case 130:
  status = AMW0_get_u32(value, cap, interface);
  break;
 case 129:
  if (cap == ACER_CAP_MAILLED) {
   status = AMW0_get_u32(value, cap, interface);
   break;
  }
 case 128:
  status = WMID_get_u32(value, cap, interface);
  break;
 }

 return status;
}
