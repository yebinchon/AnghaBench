
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct request_queue {int dummy; } ;


 int kblockd_workqueue ;
 int queue_work (int ,struct work_struct*) ;

int kblockd_schedule_work(struct request_queue *q, struct work_struct *work)
{
 return queue_work(kblockd_workqueue, work);
}
