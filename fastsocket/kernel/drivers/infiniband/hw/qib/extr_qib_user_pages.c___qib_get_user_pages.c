
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_5__ {size_t locked_vm; } ;
struct TYPE_4__ {TYPE_2__* mm; } ;


 int CAP_IPC_LOCK ;
 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 int RLIMIT_MEMLOCK ;
 int __qib_release_user_pages (struct page**,size_t,int ) ;
 int capable (int ) ;
 TYPE_1__* current ;
 int get_user_pages (TYPE_1__*,TYPE_2__*,unsigned long,size_t,int,int,struct page**,struct vm_area_struct**) ;
 unsigned long rlimit (int ) ;

__attribute__((used)) static int __qib_get_user_pages(unsigned long start_page, size_t num_pages,
    struct page **p, struct vm_area_struct **vma)
{
 unsigned long lock_limit;
 size_t got;
 int ret;

 lock_limit = rlimit(RLIMIT_MEMLOCK) >> PAGE_SHIFT;

 if (num_pages > lock_limit && !capable(CAP_IPC_LOCK)) {
  ret = -ENOMEM;
  goto bail;
 }

 for (got = 0; got < num_pages; got += ret) {
  ret = get_user_pages(current, current->mm,
         start_page + got * PAGE_SIZE,
         num_pages - got, 1, 1,
         p + got, vma);
  if (ret < 0)
   goto bail_release;
 }

 current->mm->locked_vm += num_pages;

 ret = 0;
 goto bail;

bail_release:
 __qib_release_user_pages(p, got, 0);
bail:
 return ret;
}
