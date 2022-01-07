
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef enum km_type { ____Placeholder_km_type } km_type ;


 struct page* kmap_atomic_to_page (void*) ;
 int kunmap_atomic (void*,int) ;
 int kvm_release_page_dirty (struct page*) ;

__attribute__((used)) static void nested_svm_unmap(void *addr, enum km_type idx)
{
 struct page *page;

 if (!addr)
  return;

 page = kmap_atomic_to_page(addr);

 kunmap_atomic(addr, idx);
 kvm_release_page_dirty(page);
}
