
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FIX_KMAP_BEGIN ;
 unsigned long KM_L2_CACHE ;
 unsigned long KM_TYPE_NR ;
 int PAGE_KERNEL ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int TOP_PTE (unsigned long) ;
 unsigned long __fix_to_virt (scalar_t__) ;
 unsigned long __phys_to_virt (unsigned long) ;
 int local_flush_tlb_kernel_page (unsigned long) ;
 int pfn_pte (unsigned long,int ) ;
 int set_pte_ext (int ,int ,int ) ;
 unsigned long smp_processor_id () ;

__attribute__((used)) static inline unsigned long l2_start_va(unsigned long paddr)
{
 return __phys_to_virt(paddr);

}
