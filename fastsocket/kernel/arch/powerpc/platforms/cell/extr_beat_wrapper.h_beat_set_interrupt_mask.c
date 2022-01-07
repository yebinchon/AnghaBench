
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_set_interrupt_mask ;
 int beat_hcall_norets (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline s64 beat_set_interrupt_mask(u64 index,
 u64 val0, u64 val1, u64 val2, u64 val3)
{
 return beat_hcall_norets(HV_set_interrupt_mask, index,
        val0, val1, val2, val3);
}
