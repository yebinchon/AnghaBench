
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_device {int unregistered; int qid; scalar_t__ pendingq_count; int requestq_count; int requestq; int pendingq; scalar_t__ queue_count; int reset; } ;


 int AP_RESET_IGNORE ;
 int ENODEV ;
 int __ap_schedule_poll_timer () ;
 int ap_init_queue (int ) ;
 int ap_poll_requests ;
 int atomic_sub (scalar_t__,int *) ;
 int list_splice_init (int *,int *) ;

__attribute__((used)) static void ap_reset(struct ap_device *ap_dev)
{
 int rc;

 ap_dev->reset = AP_RESET_IGNORE;
 atomic_sub(ap_dev->queue_count, &ap_poll_requests);
 ap_dev->queue_count = 0;
 list_splice_init(&ap_dev->pendingq, &ap_dev->requestq);
 ap_dev->requestq_count += ap_dev->pendingq_count;
 ap_dev->pendingq_count = 0;
 rc = ap_init_queue(ap_dev->qid);
 if (rc == -ENODEV)
  ap_dev->unregistered = 1;
 else
  __ap_schedule_poll_timer();
}
