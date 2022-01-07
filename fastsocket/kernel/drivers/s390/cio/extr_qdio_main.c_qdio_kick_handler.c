
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdio_q {int first_to_kick; int first_to_check; scalar_t__ qdio_error; TYPE_1__* irq_ptr; int nr; int (* handler ) (int ,scalar_t__,int ,int,int,int ) ;scalar_t__ is_input_q; } ;
struct TYPE_2__ {scalar_t__ state; int int_parm; int cdev; } ;


 int DBF_DEV_EVENT (int ,TYPE_1__*,char*,int,int) ;
 int DBF_INFO ;
 scalar_t__ QDIO_IRQ_STATE_ACTIVE ;
 int inbound_handler ;
 int outbound_handler ;
 int qdio_handle_aobs (struct qdio_q*,int,int) ;
 int qperf_inc (struct qdio_q*,int ) ;
 int stub1 (int ,scalar_t__,int ,int,int,int ) ;
 int sub_buf (int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void qdio_kick_handler(struct qdio_q *q)
{
 int start = q->first_to_kick;
 int end = q->first_to_check;
 int count;

 if (unlikely(q->irq_ptr->state != QDIO_IRQ_STATE_ACTIVE))
  return;

 count = sub_buf(end, start);

 if (q->is_input_q) {
  qperf_inc(q, inbound_handler);
  DBF_DEV_EVENT(DBF_INFO, q->irq_ptr, "kih s:%02x c:%02x", start, count);
 } else {
  qperf_inc(q, outbound_handler);
  DBF_DEV_EVENT(DBF_INFO, q->irq_ptr, "koh: s:%02x c:%02x",
         start, count);
 }

 qdio_handle_aobs(q, start, count);

 q->handler(q->irq_ptr->cdev, q->qdio_error, q->nr, start, count,
     q->irq_ptr->int_parm);


 q->first_to_kick = end;
 q->qdio_error = 0;
}
