
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 int __ipath_get_user_pages (unsigned long,size_t,struct page**,int *) ;
 TYPE_2__* current ;
 int down_write (int *) ;
 int up_write (int *) ;

int ipath_get_user_pages(unsigned long start_page, size_t num_pages,
    struct page **p)
{
 int ret;

 down_write(&current->mm->mmap_sem);

 ret = __ipath_get_user_pages(start_page, num_pages, p, ((void*)0));

 up_write(&current->mm->mmap_sem);

 return ret;
}
