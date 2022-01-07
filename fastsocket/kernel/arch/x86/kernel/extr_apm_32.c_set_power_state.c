
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u32 ;


 int APM_FUNC_SET_STATE ;
 int APM_SUCCESS ;
 scalar_t__ apm_bios_call_simple (int ,int ,int ,int *,int*) ;

__attribute__((used)) static int set_power_state(u_short what, u_short state)
{
 u32 eax;
 int err;

 if (apm_bios_call_simple(APM_FUNC_SET_STATE, what, state, &eax, &err))
  return err;
 return APM_SUCCESS;
}
