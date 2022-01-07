
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef int u32 ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ bios; } ;


 int APM_BIOS_DISABLED ;
 int APM_BIOS_DISENGAGED ;
 scalar_t__ APM_DEVICE_ALL ;
 int APM_DISABLED ;
 int APM_FUNC_ENGAGE_PM ;
 int APM_SUCCESS ;
 scalar_t__ apm_bios_call_simple (int ,scalar_t__,int,int *,int*) ;
 TYPE_2__ apm_info ;

__attribute__((used)) static int apm_engage_power_management(u_short device, int enable)
{
 u32 eax;
 int err;

 if ((enable == 0) && (device == APM_DEVICE_ALL)
     && (apm_info.bios.flags & APM_BIOS_DISABLED))
  return APM_DISABLED;
 if (apm_bios_call_simple(APM_FUNC_ENGAGE_PM, device, enable,
     &eax, &err))
  return err;
 if (device == APM_DEVICE_ALL) {
  if (enable)
   apm_info.bios.flags &= ~APM_BIOS_DISENGAGED;
  else
   apm_info.bios.flags |= APM_BIOS_DISENGAGED;
 }
 return APM_SUCCESS;
}
