
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_set_spe_privileged_state_1_registers ;
 int beat_hcall_norets (int ,int ,int ,int ) ;

__attribute__((used)) static inline s64 beat_set_spe_privileged_state_1_registers(
  u64 id, u64 offsetof, u64 value)
{
 return beat_hcall_norets(HV_set_spe_privileged_state_1_registers,
  id, offsetof, value);
}
