
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmmio_fault_page {int count; unsigned long page; int list; } ;


 int GFP_ATOMIC ;
 unsigned long PAGE_MASK ;
 scalar_t__ arm_kmmio_fault_page (struct kmmio_fault_page*) ;
 struct kmmio_fault_page* get_kmmio_fault_page (unsigned long) ;
 int kfree (struct kmmio_fault_page*) ;
 int kmmio_page_list (unsigned long) ;
 struct kmmio_fault_page* kzalloc (int,int ) ;
 int list_add_rcu (int *,int ) ;

__attribute__((used)) static int add_kmmio_fault_page(unsigned long page)
{
 struct kmmio_fault_page *f;

 page &= PAGE_MASK;
 f = get_kmmio_fault_page(page);
 if (f) {
  if (!f->count)
   arm_kmmio_fault_page(f);
  f->count++;
  return 0;
 }

 f = kzalloc(sizeof(*f), GFP_ATOMIC);
 if (!f)
  return -1;

 f->count = 1;
 f->page = page;

 if (arm_kmmio_fault_page(f)) {
  kfree(f);
  return -1;
 }

 list_add_rcu(&f->list, kmmio_page_list(f->page));

 return 0;
}
