
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frame; } ;


 int VDMA_PAGESIZE ;
 int VDMA_PGTBL_ENTRIES ;
 TYPE_1__* pgtbl ;

unsigned long vdma_phys2log(unsigned long paddr)
{
 int i;
 int frame;

 frame = paddr & ~(VDMA_PAGESIZE - 1);

 for (i = 0; i < VDMA_PGTBL_ENTRIES; i++) {
  if (pgtbl[i].frame == frame)
   break;
 }

 if (i == VDMA_PGTBL_ENTRIES)
  return ~0UL;

 return (i << 12) + (paddr & (VDMA_PAGESIZE - 1));
}
