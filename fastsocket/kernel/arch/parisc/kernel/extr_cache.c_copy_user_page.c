
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int copy_user_page_asm (void*,void*) ;
 int flush_kernel_dcache_page_asm (void*) ;
 int parisc_requires_coherency () ;

void copy_user_page(void *vto, void *vfrom, unsigned long vaddr,
      struct page *pg)
{

 copy_user_page_asm(vto, vfrom);
 if (!parisc_requires_coherency())
  flush_kernel_dcache_page_asm(vto);
}
