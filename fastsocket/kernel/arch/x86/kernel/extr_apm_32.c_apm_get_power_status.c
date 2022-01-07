
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef int u16 ;
struct apm_bios_call {int ebx; int ecx; int err; int edx; int func; } ;
struct TYPE_2__ {scalar_t__ get_power_status_swabinminutes; scalar_t__ get_power_status_broken; } ;


 int APM_32_UNSUPPORTED ;
 int APM_DEVICE_ALL ;
 int APM_FUNC_GET_STATUS ;
 int APM_SUCCESS ;
 scalar_t__ apm_bios_call (struct apm_bios_call*) ;
 TYPE_1__ apm_info ;
 int swab16 (int ) ;

__attribute__((used)) static int apm_get_power_status(u_short *status, u_short *bat, u_short *life)
{
 struct apm_bios_call call;

 call.func = APM_FUNC_GET_STATUS;
 call.ebx = APM_DEVICE_ALL;
 call.ecx = 0;

 if (apm_info.get_power_status_broken)
  return APM_32_UNSUPPORTED;
 if (apm_bios_call(&call))
  return call.err;
 *status = call.ebx;
 *bat = call.ecx;
 if (apm_info.get_power_status_swabinminutes) {
  *life = swab16((u16)call.edx);
  *life |= 0x8000;
 } else
  *life = call.edx;
 return APM_SUCCESS;
}
