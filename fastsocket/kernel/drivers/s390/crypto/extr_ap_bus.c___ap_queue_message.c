
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int response_code; } ;
struct ap_message {int list; int (* receive ) (struct ap_device*,struct ap_message*,int ) ;int special; int length; int message; int psmid; } ;
struct ap_device {scalar_t__ queue_count; scalar_t__ queue_depth; int total_request_count; int requestq_count; int requestq; int pendingq_count; int pendingq; int qid; } ;







 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ERR_PTR (int) ;
 struct ap_queue_status __ap_send (int ,int ,int ,int ,int ) ;
 int ap_increase_queue_count (struct ap_device*) ;
 int ap_poll_requests ;
 int ap_schedule_poll_timer () ;
 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int stub1 (struct ap_device*,struct ap_message*,int ) ;
 int stub2 (struct ap_device*,struct ap_message*,int ) ;

__attribute__((used)) static int __ap_queue_message(struct ap_device *ap_dev, struct ap_message *ap_msg)
{
 struct ap_queue_status status;

 if (list_empty(&ap_dev->requestq) &&
     ap_dev->queue_count < ap_dev->queue_depth) {
  status = __ap_send(ap_dev->qid, ap_msg->psmid,
       ap_msg->message, ap_msg->length,
       ap_msg->special);
  switch (status.response_code) {
  case 131:
   list_add_tail(&ap_msg->list, &ap_dev->pendingq);
   atomic_inc(&ap_poll_requests);
   ap_dev->pendingq_count++;
   ap_increase_queue_count(ap_dev);
   ap_dev->total_request_count++;
   break;
  case 130:
  case 128:
   list_add_tail(&ap_msg->list, &ap_dev->requestq);
   ap_dev->requestq_count++;
   ap_dev->total_request_count++;
   return -EBUSY;
  case 129:
  case 132:
   ap_msg->receive(ap_dev, ap_msg, ERR_PTR(-EINVAL));
   return -EINVAL;
  default:
   ap_msg->receive(ap_dev, ap_msg, ERR_PTR(-ENODEV));
   return -ENODEV;
  }
 } else {
  list_add_tail(&ap_msg->list, &ap_dev->requestq);
  ap_dev->requestq_count++;
  ap_dev->total_request_count++;
  return -EBUSY;
 }
 ap_schedule_poll_timer();
 return 0;
}
