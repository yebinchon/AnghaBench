
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum km_type { ____Placeholder_km_type } km_type ;


 int BUG_ON (int) ;
 unsigned long FIXADDR_START ;
 scalar_t__ FIX_KMAP_BEGIN ;
 int KM_TYPE_NR ;
 unsigned long PAGE_MASK ;
 unsigned long __fix_to_virt (scalar_t__) ;
 int __flush_cache_one (unsigned long) ;
 int __flush_tlb_one (unsigned long) ;
 int flush_cache_all () ;
 int flush_tlb_all () ;
 int init_mm ;
 scalar_t__ kmap_pte ;
 int pagefault_enable () ;
 int pte_clear (int *,unsigned long,scalar_t__) ;
 int smp_processor_id () ;

void kunmap_atomic(void *kvaddr, enum km_type type)
{
 pagefault_enable();
}
