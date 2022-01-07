
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_get_spe_privileged_state_1_registers ;
 int beat_hcall1 (int ,int *,int ,int ) ;

__attribute__((used)) static inline s64 beat_get_spe_privileged_state_1_registers(
  u64 id, u64 offsetof, u64 *value)
{
 u64 dummy[1];
 s64 ret;

 ret = beat_hcall1(HV_get_spe_privileged_state_1_registers, dummy, id,
  offsetof);
 *value = dummy[0];
 return ret;
}
