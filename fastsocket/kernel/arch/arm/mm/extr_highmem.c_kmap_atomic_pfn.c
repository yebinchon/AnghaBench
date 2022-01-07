
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum km_type { ____Placeholder_km_type } km_type ;


 int BUG_ON (int) ;
 scalar_t__ FIX_KMAP_BEGIN ;
 int KM_TYPE_NR ;
 int * TOP_PTE (unsigned long) ;
 unsigned long __fix_to_virt (scalar_t__) ;
 int kmap_prot ;
 int local_flush_tlb_kernel_page (unsigned long) ;
 int pagefault_disable () ;
 int pfn_pte (unsigned long,int ) ;
 int pte_none (int ) ;
 int set_pte_ext (int *,int ,int ) ;
 int smp_processor_id () ;

void *kmap_atomic_pfn(unsigned long pfn, enum km_type type)
{
 unsigned int idx;
 unsigned long vaddr;

 pagefault_disable();

 idx = type + KM_TYPE_NR * smp_processor_id();
 vaddr = __fix_to_virt(FIX_KMAP_BEGIN + idx);



 set_pte_ext(TOP_PTE(vaddr), pfn_pte(pfn, kmap_prot), 0);
 local_flush_tlb_kernel_page(vaddr);

 return (void *)vaddr;
}
