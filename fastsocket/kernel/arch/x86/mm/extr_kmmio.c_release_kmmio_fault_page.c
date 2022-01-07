
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmmio_fault_page {scalar_t__ count; struct kmmio_fault_page* release_next; } ;


 int BUG_ON (int) ;
 unsigned long PAGE_MASK ;
 int disarm_kmmio_fault_page (struct kmmio_fault_page*) ;
 struct kmmio_fault_page* get_kmmio_fault_page (unsigned long) ;

__attribute__((used)) static void release_kmmio_fault_page(unsigned long page,
    struct kmmio_fault_page **release_list)
{
 struct kmmio_fault_page *f;

 page &= PAGE_MASK;
 f = get_kmmio_fault_page(page);
 if (!f)
  return;

 f->count--;
 BUG_ON(f->count < 0);
 if (!f->count) {
  disarm_kmmio_fault_page(f);
  f->release_next = *release_list;
  *release_list = f;
 }
}
