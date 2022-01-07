
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PAGE_SIZE ;
 int __KM_CACHE ;
 unsigned long __get_DAMPR (int) ;
 int __set_DAMPR (int,unsigned long) ;
 int __set_IAMPR (int,unsigned long) ;
 int frv_dcache_writeback (unsigned long,scalar_t__) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;

void flush_dcache_page(struct page *page)
{
 unsigned long dampr2;
 void *vaddr;

 dampr2 = __get_DAMPR(2);

 vaddr = kmap_atomic(page, __KM_CACHE);

 frv_dcache_writeback((unsigned long) vaddr, (unsigned long) vaddr + PAGE_SIZE);

 kunmap_atomic(vaddr, __KM_CACHE);

 if (dampr2) {
  __set_DAMPR(2, dampr2);
  __set_IAMPR(2, dampr2);
 }

}
