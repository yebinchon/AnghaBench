
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_downcount_of_interrupt ;
 int beat_hcall_norets (int ,int ) ;

__attribute__((used)) static inline s64 beat_downcount_of_interrupt(u64 plug_id)
{
 return beat_hcall_norets(HV_downcount_of_interrupt, plug_id);
}
