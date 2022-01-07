
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;


 scalar_t__ PAGE_SIZE ;
 int VM_EXEC ;
 int __flush_icache_range (unsigned long,scalar_t__) ;
 void* page_address (struct page*) ;

void flush_icache_page(struct vm_area_struct *vma, struct page *page)
{
 if (vma->vm_flags & VM_EXEC) {
  void *v = page_address(page);
  __flush_icache_range((unsigned long)v, (unsigned long)v + PAGE_SIZE);
 }
}
