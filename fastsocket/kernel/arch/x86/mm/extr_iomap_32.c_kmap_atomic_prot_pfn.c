
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;
typedef enum km_type { ____Placeholder_km_type } km_type ;
typedef enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;


 int FIX_KMAP_BEGIN ;
 int KM_TYPE_NR ;
 unsigned long __fix_to_virt (int) ;
 int arch_flush_lazy_mmu_mode () ;
 int debug_kmap_atomic (int) ;
 int kmap_pte ;
 int pagefault_disable () ;
 int pfn_pte (unsigned long,int ) ;
 int set_pte (int,int ) ;
 int smp_processor_id () ;

void *kmap_atomic_prot_pfn(unsigned long pfn, enum km_type type, pgprot_t prot)
{
 enum fixed_addresses idx;
 unsigned long vaddr;

 pagefault_disable();

 debug_kmap_atomic(type);
 idx = type + KM_TYPE_NR * smp_processor_id();
 vaddr = __fix_to_virt(FIX_KMAP_BEGIN + idx);
 set_pte(kmap_pte - idx, pfn_pte(pfn, prot));
 arch_flush_lazy_mmu_mode();

 return (void *)vaddr;
}
