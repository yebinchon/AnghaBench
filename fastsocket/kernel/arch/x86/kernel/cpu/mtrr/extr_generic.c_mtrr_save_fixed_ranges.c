
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fixed_ranges; } ;


 scalar_t__ cpu_has_mtrr ;
 int get_fixed_ranges (int ) ;
 TYPE_1__ mtrr_state ;

void mtrr_save_fixed_ranges(void *info)
{
 if (cpu_has_mtrr)
  get_fixed_ranges(mtrr_state.fixed_ranges);
}
