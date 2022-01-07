
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct ipath_user_pages_work {size_t num_pages; int work; struct mm_struct* mm; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int __ipath_release_user_pages (struct page**,size_t,int) ;
 int current ;
 struct mm_struct* get_task_mm (int ) ;
 int ib_wq ;
 struct ipath_user_pages_work* kmalloc (int,int ) ;
 int mmput (struct mm_struct*) ;
 int queue_work (int ,int *) ;
 int user_pages_account ;

void ipath_release_user_pages_on_close(struct page **p, size_t num_pages)
{
 struct ipath_user_pages_work *work;
 struct mm_struct *mm;

 __ipath_release_user_pages(p, num_pages, 1);

 mm = get_task_mm(current);
 if (!mm)
  return;

 work = kmalloc(sizeof(*work), GFP_KERNEL);
 if (!work)
  goto bail_mm;

 INIT_WORK(&work->work, user_pages_account);
 work->mm = mm;
 work->num_pages = num_pages;

 queue_work(ib_wq, &work->work);
 return;

bail_mm:
 mmput(mm);
 return;
}
