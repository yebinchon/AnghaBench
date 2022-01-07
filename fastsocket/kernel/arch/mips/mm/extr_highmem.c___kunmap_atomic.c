
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum km_type { ____Placeholder_km_type } km_type ;
typedef enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;


 int BUG_ON (int) ;
 unsigned long FIXADDR_START ;
 int FIX_KMAP_BEGIN ;
 int KM_TYPE_NR ;
 unsigned long PAGE_MASK ;
 unsigned long __fix_to_virt (int) ;
 int init_mm ;
 int kmap_pte ;
 int local_flush_tlb_one (unsigned long) ;
 int pagefault_enable () ;
 int pte_clear (int *,unsigned long,int) ;
 int smp_processor_id () ;

void __kunmap_atomic(void *kvaddr, enum km_type type)
{
 pagefault_enable();
}
