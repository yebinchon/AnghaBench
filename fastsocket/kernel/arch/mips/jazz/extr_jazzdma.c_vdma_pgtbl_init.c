
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long frame; int owner; } ;


 scalar_t__ VDMA_PAGESIZE ;
 int VDMA_PAGE_EMPTY ;
 int VDMA_PGTBL_ENTRIES ;
 TYPE_1__* pgtbl ;

__attribute__((used)) static inline void vdma_pgtbl_init(void)
{
 unsigned long paddr = 0;
 int i;

 for (i = 0; i < VDMA_PGTBL_ENTRIES; i++) {
  pgtbl[i].frame = paddr;
  pgtbl[i].owner = VDMA_PAGE_EMPTY;
  paddr += VDMA_PAGESIZE;
 }
}
