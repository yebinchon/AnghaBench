
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cn_callback_entry {TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ cn_queue; } ;


 int flush_scheduled_work () ;
 int flush_workqueue (scalar_t__) ;
 int kfree (struct cn_callback_entry*) ;

__attribute__((used)) static void cn_queue_free_callback(struct cn_callback_entry *cbq)
{

 flush_scheduled_work();
 if (cbq->pdev->cn_queue)
  flush_workqueue(cbq->pdev->cn_queue);

 kfree(cbq);
}
