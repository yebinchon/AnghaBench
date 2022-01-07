
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int dummy; } ;
struct throtl_data {scalar_t__ limits_changed; struct delayed_work throtl_work; } ;


 int __cancel_delayed_work (struct delayed_work*) ;
 int jiffies ;
 int kthrotld_workqueue ;
 int queue_delayed_work (int ,struct delayed_work*,unsigned long) ;
 int throtl_log (struct throtl_data*,char*,unsigned long,int ) ;
 scalar_t__ total_nr_queued (struct throtl_data*) ;

__attribute__((used)) static void
throtl_schedule_delayed_work(struct throtl_data *td, unsigned long delay)
{

 struct delayed_work *dwork = &td->throtl_work;


 if (total_nr_queued(td) > 0 || td->limits_changed) {




  __cancel_delayed_work(dwork);
  queue_delayed_work(kthrotld_workqueue, dwork, delay);
  throtl_log(td, "schedule work. delay=%lu jiffies=%lu",
    delay, jiffies);
 }
}
