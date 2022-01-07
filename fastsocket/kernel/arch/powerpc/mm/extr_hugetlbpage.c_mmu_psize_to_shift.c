
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int shift; } ;


 int BUG () ;
 TYPE_1__* mmu_psize_defs ;

__attribute__((used)) static inline unsigned int mmu_psize_to_shift(unsigned int mmu_psize)
{
 if (mmu_psize_defs[mmu_psize].shift)
  return mmu_psize_defs[mmu_psize].shift;
 BUG();
}
