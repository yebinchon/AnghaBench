
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {size_t locked_vm; int mmap_sem; } ;


 int __qib_release_user_pages (struct page**,size_t,int) ;
 TYPE_2__* current ;
 int down_write (int *) ;
 int up_write (int *) ;

void qib_release_user_pages(struct page **p, size_t num_pages)
{
 if (current->mm)
  down_write(&current->mm->mmap_sem);

 __qib_release_user_pages(p, num_pages, 1);

 if (current->mm) {
  current->mm->locked_vm -= num_pages;
  up_write(&current->mm->mmap_sem);
 }
}
