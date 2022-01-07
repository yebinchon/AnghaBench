
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_insert_htab_entry ;
 int beat_hcall3 (int ,int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline s64 beat_insert_htab_entry(u64 htab_id, u64 group,
 u64 bitmask, u64 hpte_v, u64 hpte_r, u64 *slot)
{
 u64 dummy[3];
 s64 ret;

 ret = beat_hcall3(HV_insert_htab_entry, dummy, htab_id, group,
  bitmask, hpte_v, hpte_r);
 *slot = dummy[0];
 return ret;
}
