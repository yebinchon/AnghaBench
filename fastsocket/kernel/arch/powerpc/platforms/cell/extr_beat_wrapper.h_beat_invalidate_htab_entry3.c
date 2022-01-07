
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_invalidate_htab_entry3 ;
 int beat_hcall_norets (int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline s64 beat_invalidate_htab_entry3(u64 htab_id, u64 group,
 u64 va, u64 pss)
{
 return beat_hcall_norets(HV_invalidate_htab_entry3,
  htab_id, group, va, pss);
}
