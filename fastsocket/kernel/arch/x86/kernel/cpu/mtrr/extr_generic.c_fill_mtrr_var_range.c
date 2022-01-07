
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct mtrr_var_range {void* mask_hi; void* mask_lo; void* base_hi; void* base_lo; } ;
struct TYPE_2__ {struct mtrr_var_range* var_ranges; } ;


 TYPE_1__ mtrr_state ;

void fill_mtrr_var_range(unsigned int index,
  u32 base_lo, u32 base_hi, u32 mask_lo, u32 mask_hi)
{
 struct mtrr_var_range *vr;

 vr = mtrr_state.var_ranges;

 vr[index].base_lo = base_lo;
 vr[index].base_hi = base_hi;
 vr[index].mask_lo = mask_lo;
 vr[index].mask_hi = mask_hi;
}
