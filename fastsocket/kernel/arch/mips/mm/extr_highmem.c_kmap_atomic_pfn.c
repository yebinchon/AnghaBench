
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum km_type { ____Placeholder_km_type } km_type ;
typedef enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;


 int FIX_KMAP_BEGIN ;
 int KM_TYPE_NR ;
 int PAGE_KERNEL ;
 unsigned long __fix_to_virt (int) ;
 int debug_kmap_atomic (int) ;
 int flush_tlb_one (unsigned long) ;
 int kmap_pte ;
 int pagefault_disable () ;
 int pfn_pte (unsigned long,int ) ;
 int set_pte (int,int ) ;
 int smp_processor_id () ;

void *kmap_atomic_pfn(unsigned long pfn, enum km_type type)
{
 enum fixed_addresses idx;
 unsigned long vaddr;

 pagefault_disable();

 debug_kmap_atomic(type);
 idx = type + KM_TYPE_NR*smp_processor_id();
 vaddr = __fix_to_virt(FIX_KMAP_BEGIN + idx);
 set_pte(kmap_pte-idx, pfn_pte(pfn, PAGE_KERNEL));
 flush_tlb_one(vaddr);

 return (void*) vaddr;
}
