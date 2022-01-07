
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CACHE_OC_SYN_MASK ;
 scalar_t__ L1_CACHE_BYTES ;
 unsigned long MAGIC_PAGE0_START ;
 unsigned long long PAGE_SIZE ;
 int get_asid () ;
 int sh64_setup_dtlb_cache_slot (unsigned long long,int ,unsigned long) ;
 int sh64_teardown_dtlb_cache_slot () ;

__attribute__((used)) static void sh64_dcache_purge_coloured_phy_page(unsigned long paddr,
             unsigned long eaddr)
{
 unsigned long long magic_page_start;
 unsigned long long magic_eaddr, magic_eaddr_end;

 magic_page_start = MAGIC_PAGE0_START + (eaddr & CACHE_OC_SYN_MASK);



 sh64_setup_dtlb_cache_slot(magic_page_start, get_asid(), paddr);

 magic_eaddr = magic_page_start;
 magic_eaddr_end = magic_eaddr + PAGE_SIZE;

 while (magic_eaddr < magic_eaddr_end) {



  __asm__ __volatile__ ("ocbp %0, 0" : : "r" (magic_eaddr));
  magic_eaddr += L1_CACHE_BYTES;
 }

 sh64_teardown_dtlb_cache_slot();
}
