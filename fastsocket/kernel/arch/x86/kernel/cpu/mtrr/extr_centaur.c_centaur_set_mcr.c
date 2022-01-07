
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ mtrr_type ;
struct TYPE_2__ {unsigned long high; unsigned long low; } ;


 scalar_t__ MSR_IDT_MCR0 ;
 scalar_t__ MTRR_TYPE_UNCACHABLE ;
 unsigned long PAGE_SHIFT ;
 TYPE_1__* centaur_mcr ;
 scalar_t__ centaur_mcr_type ;
 int wrmsr (scalar_t__,unsigned long,unsigned long) ;

__attribute__((used)) static void
centaur_set_mcr(unsigned int reg, unsigned long base,
  unsigned long size, mtrr_type type)
{
 unsigned long low, high;

 if (size == 0) {

  high = low = 0;
 } else {
  high = base << PAGE_SHIFT;
  if (centaur_mcr_type == 0) {

   low = -size << PAGE_SHIFT | 0x1f;
  } else {
   if (type == MTRR_TYPE_UNCACHABLE)
    low = -size << PAGE_SHIFT | 0x02;
   else
    low = -size << PAGE_SHIFT | 0x09;
  }
 }
 centaur_mcr[reg].high = high;
 centaur_mcr[reg].low = low;
 wrmsr(MSR_IDT_MCR0 + reg, low, high);
}
