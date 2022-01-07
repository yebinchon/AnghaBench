
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_write_htab_entry ;
 int beat_hcall2 (int ,int *,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline s64 beat_write_htab_entry(u64 htab_id, u64 slot,
 u64 hpte_v, u64 hpte_r, u64 mask_v, u64 mask_r,
 u64 *ret_v, u64 *ret_r)
{
 u64 dummy[2];
 s64 ret;

 ret = beat_hcall2(HV_write_htab_entry, dummy, htab_id, slot,
  hpte_v, hpte_r, mask_v, mask_r);
 *ret_v = dummy[0];
 *ret_r = dummy[1];
 return ret;
}
