
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_get_interrupt_status_of_spe ;
 int beat_hcall1 (int ,int *,int ,int ) ;

__attribute__((used)) static inline s64 beat_get_interrupt_status_of_spe(u64 id, u64 class, u64 *val)
{
 u64 dummy[1];
 s64 ret;

 ret = beat_hcall1(HV_get_interrupt_status_of_spe, dummy, id, class);
 *val = dummy[0];
 return ret;
}
