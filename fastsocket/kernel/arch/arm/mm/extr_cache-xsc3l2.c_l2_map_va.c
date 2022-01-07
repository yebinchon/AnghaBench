
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FIX_KMAP_BEGIN ;
 unsigned long KM_L2_CACHE ;
 unsigned long KM_TYPE_NR ;
 int PAGE_KERNEL ;
 unsigned long PAGE_MASK ;
 int PAGE_SHIFT ;
 unsigned long PSR_I_BIT ;
 int TOP_PTE (unsigned long) ;
 unsigned long __fix_to_virt (scalar_t__) ;
 unsigned long __phys_to_virt (unsigned long) ;
 int local_flush_tlb_kernel_page (unsigned long) ;
 int pfn_pte (unsigned long,int ) ;
 int raw_local_irq_restore (unsigned long) ;
 int set_pte_ext (int ,int ,int ) ;
 unsigned long smp_processor_id () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline unsigned long l2_map_va(unsigned long pa, unsigned long prev_va,
          unsigned long flags)
{
 return __phys_to_virt(pa);

}
