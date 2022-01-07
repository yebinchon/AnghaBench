
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_clear_htab3 ;
 int beat_hcall_norets (int ,int ) ;

__attribute__((used)) static inline s64 beat_clear_htab3(u64 htab_id)
{
 return beat_hcall_norets(HV_clear_htab3, htab_id);
}
