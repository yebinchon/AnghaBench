
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int penc; unsigned long shift; } ;



 TYPE_1__* mmu_psize_defs ;

__attribute__((used)) static inline void __tlbiel(unsigned long va, int psize, int ssize)
{
 unsigned int penc;


 va &= ~(0xffffULL << 48);

 switch (psize) {
 case 128:
  va &= ~0xffful;
  va |= ssize << 8;
  asm volatile(".long 0x7c000224 | (%0 << 11) | (0 << 21)"
        : : "r"(va) : "memory");
  break;
 default:
  penc = mmu_psize_defs[psize].penc;
  va &= ~((1ul << mmu_psize_defs[psize].shift) - 1);
  va |= penc << 12;
  va |= ssize << 8;
  va |= 1;
  asm volatile(".long 0x7c000224 | (%0 << 11) | (1 << 21)"
        : : "r"(va) : "memory");
  break;
 }

}
