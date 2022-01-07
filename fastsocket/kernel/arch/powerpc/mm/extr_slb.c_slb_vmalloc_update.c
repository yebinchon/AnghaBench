
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long sllp; } ;


 unsigned long SLB_VSID_KERNEL ;
 int VMALLOC_START ;
 int mmu_kernel_ssize ;
 TYPE_1__* mmu_psize_defs ;
 size_t mmu_vmalloc_psize ;
 int slb_flush_and_rebolt () ;
 int slb_shadow_update (int ,int ,unsigned long,int) ;

void slb_vmalloc_update(void)
{
 unsigned long vflags;

 vflags = SLB_VSID_KERNEL | mmu_psize_defs[mmu_vmalloc_psize].sllp;
 slb_shadow_update(VMALLOC_START, mmu_kernel_ssize, vflags, 1);
 slb_flush_and_rebolt();
}
