
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum km_type { ____Placeholder_km_type } km_type ;


 int BUG_ON (int) ;
 scalar_t__ FIXADDR_START ;
 scalar_t__ FIX_KMAP_BEGIN ;
 int KM_TYPE_NR ;
 int LAST_PKMAP ;
 unsigned long PAGE_MASK ;
 unsigned long PKMAP_ADDR (int ) ;
 size_t PKMAP_NR (unsigned long) ;
 int TOP_PTE (unsigned long) ;
 int __cpuc_flush_dcache_page (void*) ;
 unsigned long __fix_to_virt (scalar_t__) ;
 int __pte (int ) ;
 int kunmap_high (int ) ;
 int local_flush_tlb_kernel_page (unsigned long) ;
 int pagefault_enable () ;
 int * pkmap_page_table ;
 int pte_page (int ) ;
 int set_pte_ext (int ,int ,int ) ;
 int smp_processor_id () ;

void kunmap_atomic(void *kvaddr, enum km_type type)
{
 unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 unsigned int idx = type + KM_TYPE_NR * smp_processor_id();

 if (kvaddr >= (void *)FIXADDR_START) {
  __cpuc_flush_dcache_page((void *)vaddr);





  (void) idx;

 } else if (vaddr >= PKMAP_ADDR(0) && vaddr < PKMAP_ADDR(LAST_PKMAP)) {

  kunmap_high(pte_page(pkmap_page_table[PKMAP_NR(vaddr)]));
 }
 pagefault_enable();
}
