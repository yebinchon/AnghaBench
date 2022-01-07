
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mtrr_type ;
struct TYPE_2__ {int (* get ) (int,unsigned long*,unsigned long*,int *) ;} ;


 int ENOSPC ;
 int centaur_mcr_reserved ;
 TYPE_1__* mtrr_if ;
 int num_var_ranges ;
 int stub1 (int,unsigned long*,unsigned long*,int *) ;

__attribute__((used)) static int
centaur_get_free_region(unsigned long base, unsigned long size, int replace_reg)
{
 unsigned long lbase, lsize;
 mtrr_type ltype;
 int i, max;

 max = num_var_ranges;
 if (replace_reg >= 0 && replace_reg < max)
  return replace_reg;

 for (i = 0; i < max; ++i) {
  if (centaur_mcr_reserved & (1 << i))
   continue;
  mtrr_if->get(i, &lbase, &lsize, &ltype);
  if (lsize == 0)
   return i;
 }

 return -ENOSPC;
}
