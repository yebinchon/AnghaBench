
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_clear_interrupt_status_of_spe ;
 int beat_hcall_norets (int ,int ,int ,int ) ;

__attribute__((used)) static inline s64 beat_clear_interrupt_status_of_spe(u64 id, u64 class,
 u64 mask)
{
 return beat_hcall_norets(HV_clear_interrupt_status_of_spe,
  id, class, mask);
}
