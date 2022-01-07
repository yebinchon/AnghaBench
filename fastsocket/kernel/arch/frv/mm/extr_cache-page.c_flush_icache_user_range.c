
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 unsigned long PAGE_MASK ;
 int __KM_CACHE ;
 unsigned long __get_DAMPR (int) ;
 int __set_DAMPR (int,unsigned long) ;
 int __set_IAMPR (int,unsigned long) ;
 int frv_cache_wback_inv (unsigned long,unsigned long) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;

void flush_icache_user_range(struct vm_area_struct *vma, struct page *page,
        unsigned long start, unsigned long len)
{
 unsigned long dampr2;
 void *vaddr;

 dampr2 = __get_DAMPR(2);

 vaddr = kmap_atomic(page, __KM_CACHE);

 start = (start & ~PAGE_MASK) | (unsigned long) vaddr;
 frv_cache_wback_inv(start, start + len);

 kunmap_atomic(vaddr, __KM_CACHE);

 if (dampr2) {
  __set_DAMPR(2, dampr2);
  __set_IAMPR(2, dampr2);
 }

}
