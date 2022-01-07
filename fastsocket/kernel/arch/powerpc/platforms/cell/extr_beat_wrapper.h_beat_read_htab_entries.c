
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_read_htab_entries ;
 int beat_hcall5 (int ,int *,int ,int ) ;

__attribute__((used)) static inline s64 beat_read_htab_entries(u64 htab_id, u64 index, u64 *retbuf)
{
 return beat_hcall5(HV_read_htab_entries, retbuf, htab_id, index);
}
