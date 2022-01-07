
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum km_type { ____Placeholder_km_type } km_type ;
typedef enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;


 int FIX_KMAP_BEGIN ;
 int KM_TYPE_NR ;
 unsigned long PAGE_MASK ;
 unsigned long __fix_to_virt (int) ;
 int kmap_pte ;
 int kpte_clear_flush (int,unsigned long) ;
 int pagefault_enable () ;
 int smp_processor_id () ;

void
iounmap_atomic(void *kvaddr, enum km_type type)
{
 unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 enum fixed_addresses idx = type + KM_TYPE_NR*smp_processor_id();







 if (vaddr == __fix_to_virt(FIX_KMAP_BEGIN+idx))
  kpte_clear_flush(kmap_pte-idx, vaddr);

 pagefault_enable();
}
