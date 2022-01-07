
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_update_htab_permission3 ;
 int beat_hcall_norets (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline s64 beat_update_htab_permission3(u64 htab_id, u64 group,
 u64 va, u64 pss, u64 ptel_mask, u64 ptel_value)
{
 return beat_hcall_norets(HV_update_htab_permission3,
  htab_id, group, va, pss, ptel_mask, ptel_value);
}
