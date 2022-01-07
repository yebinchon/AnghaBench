
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_insert_htab_entry3 ;
 int beat_hcall1 (int ,int *,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline s64 beat_insert_htab_entry3(u64 htab_id, u64 group,
 u64 hpte_v, u64 hpte_r, u64 mask_v, u64 value_v, u64 *slot)
{
 u64 dummy[1];
 s64 ret;

 ret = beat_hcall1(HV_insert_htab_entry3, dummy, htab_id, group,
  hpte_v, hpte_r, mask_v, value_v);
 *slot = dummy[0];
 return ret;
}
