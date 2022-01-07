
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct cn_queue_dev {int wq_requested; struct work_struct wq_creation; int cn_queue; } ;
struct cn_callback_entry {struct cn_queue_dev* pdev; } ;


 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 scalar_t__ likely (int ) ;
 int queue_work (int ,struct work_struct*) ;
 int schedule_work (struct work_struct*) ;

int queue_cn_work(struct cn_callback_entry *cbq, struct work_struct *work)
{
 struct cn_queue_dev *pdev = cbq->pdev;

 if (likely(pdev->cn_queue))
  return queue_work(pdev->cn_queue, work);


 if (atomic_inc_return(&pdev->wq_requested) == 1)
  schedule_work(&pdev->wq_creation);
 else
  atomic_dec(&pdev->wq_requested);

 return schedule_work(work);
}
