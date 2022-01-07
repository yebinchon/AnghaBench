
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct omap_mbox {TYPE_2__* rxq; TYPE_1__* ops; int (* err_notify ) () ;} ;
typedef scalar_t__ mbox_msg_t ;
struct TYPE_4__ {int work; struct request_queue* queue; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 int GFP_ATOMIC ;
 int IRQ_RX ;
 scalar_t__ OMAP_MBOX_TYPE1 ;
 int WRITE ;
 int ack_mbox_irq (struct omap_mbox*,int ) ;
 struct request* blk_get_request (struct request_queue*,int ,int ) ;
 int blk_insert_request (struct request_queue*,struct request*,int ,void*) ;
 int disable_mbox_irq (struct omap_mbox*,int ) ;
 int enable_mbox_irq (struct omap_mbox*,int ) ;
 int mbox_fifo_empty (struct omap_mbox*) ;
 scalar_t__ mbox_fifo_read (struct omap_mbox*) ;
 int mbox_seq_test (struct omap_mbox*,scalar_t__) ;
 int pr_info (char*,scalar_t__) ;
 int schedule_work (int *) ;
 int stub1 () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __mbox_rx_interrupt(struct omap_mbox *mbox)
{
 struct request *rq;
 mbox_msg_t msg;
 struct request_queue *q = mbox->rxq->queue;

 disable_mbox_irq(mbox, IRQ_RX);

 while (!mbox_fifo_empty(mbox)) {
  rq = blk_get_request(q, WRITE, GFP_ATOMIC);
  if (unlikely(!rq))
   goto nomem;

  msg = mbox_fifo_read(mbox);

  if (unlikely(mbox_seq_test(mbox, msg))) {
   pr_info("mbox: Illegal seq bit!(%08x)\n", msg);
   if (mbox->err_notify)
    mbox->err_notify();
  }

  blk_insert_request(q, rq, 0, (void *)msg);
  if (mbox->ops->type == OMAP_MBOX_TYPE1)
   break;
 }


 ack_mbox_irq(mbox, IRQ_RX);
 enable_mbox_irq(mbox, IRQ_RX);
nomem:
 schedule_work(&mbox->rxq->work);
}
