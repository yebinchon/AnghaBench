
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_work {int list; } ;
struct ubi_device {scalar_t__ works_count; int wl_lock; int bgt_thread; scalar_t__ thread_enabled; int works; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_assert (int) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void schedule_ubi_work(struct ubi_device *ubi, struct ubi_work *wrk)
{
 spin_lock(&ubi->wl_lock);
 list_add_tail(&wrk->list, &ubi->works);
 ubi_assert(ubi->works_count >= 0);
 ubi->works_count += 1;
 if (ubi->thread_enabled)
  wake_up_process(ubi->bgt_thread);
 spin_unlock(&ubi->wl_lock);
}
