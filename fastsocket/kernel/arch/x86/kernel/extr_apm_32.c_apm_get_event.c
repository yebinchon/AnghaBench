
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct apm_bios_call {int err; scalar_t__ ecx; scalar_t__ ebx; int func; } ;
typedef scalar_t__ apm_eventinfo_t ;
typedef scalar_t__ apm_event_t ;
struct TYPE_2__ {int connection_version; } ;


 int APM_FUNC_GET_EVENT ;
 int APM_SUCCESS ;
 scalar_t__ apm_bios_call (struct apm_bios_call*) ;
 TYPE_1__ apm_info ;

__attribute__((used)) static int apm_get_event(apm_event_t *event, apm_eventinfo_t *info)
{
 struct apm_bios_call call;

 call.func = APM_FUNC_GET_EVENT;
 call.ebx = call.ecx = 0;

 if (apm_bios_call(&call))
  return call.err;

 *event = call.ebx;
 if (apm_info.connection_version < 0x0102)
  *info = ~0;
 else
  *info = call.ecx;
 return APM_SUCCESS;
}
