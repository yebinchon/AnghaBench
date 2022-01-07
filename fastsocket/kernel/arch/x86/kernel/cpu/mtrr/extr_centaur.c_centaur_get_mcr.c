
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mtrr_type ;
struct TYPE_2__ {int high; int low; } ;


 int MTRR_TYPE_UNCACHABLE ;
 int MTRR_TYPE_WRBACK ;
 int MTRR_TYPE_WRCOMB ;
 int PAGE_SHIFT ;
 TYPE_1__* centaur_mcr ;
 int centaur_mcr_type ;

__attribute__((used)) static void
centaur_get_mcr(unsigned int reg, unsigned long *base,
  unsigned long *size, mtrr_type * type)
{
 *base = centaur_mcr[reg].high >> PAGE_SHIFT;
 *size = -(centaur_mcr[reg].low & 0xfffff000) >> PAGE_SHIFT;
 *type = MTRR_TYPE_WRCOMB;

 if (centaur_mcr_type == 1 && ((centaur_mcr[reg].low & 31) & 2))
  *type = MTRR_TYPE_UNCACHABLE;
 if (centaur_mcr_type == 1 && (centaur_mcr[reg].low & 31) == 25)
  *type = MTRR_TYPE_WRBACK;
 if (centaur_mcr_type == 0 && (centaur_mcr[reg].low & 31) == 31)
  *type = MTRR_TYPE_WRBACK;
}
