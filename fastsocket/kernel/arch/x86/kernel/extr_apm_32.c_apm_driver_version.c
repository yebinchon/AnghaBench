
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u32 ;


 int APM_FUNC_VERSION ;
 int APM_SUCCESS ;
 scalar_t__ apm_bios_call_simple (int ,int ,int ,int *,int*) ;

__attribute__((used)) static int apm_driver_version(u_short *val)
{
 u32 eax;
 int err;

 if (apm_bios_call_simple(APM_FUNC_VERSION, 0, *val, &eax, &err))
  return err;
 *val = eax;
 return APM_SUCCESS;
}
