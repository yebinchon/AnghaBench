
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int end_io; } ;
struct omap_msg_tx_data {void* arg; int msg; } ;
struct omap_mbox {TYPE_1__* txq; } ;
typedef int mbox_msg_t ;
struct TYPE_2__ {int work; struct request_queue* queue; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int WRITE ;
 struct request* blk_get_request (struct request_queue*,int ,int ) ;
 int blk_insert_request (struct request_queue*,struct request*,int ,struct omap_msg_tx_data*) ;
 int kfree (struct omap_msg_tx_data*) ;
 struct omap_msg_tx_data* kmalloc (int,int ) ;
 int omap_msg_tx_end_io ;
 int schedule_work (int *) ;
 scalar_t__ unlikely (int) ;

int omap_mbox_msg_send(struct omap_mbox *mbox, mbox_msg_t msg, void* arg)
{
 struct omap_msg_tx_data *tx_data;
 struct request *rq;
 struct request_queue *q = mbox->txq->queue;

 tx_data = kmalloc(sizeof(*tx_data), GFP_ATOMIC);
 if (unlikely(!tx_data))
  return -ENOMEM;

 rq = blk_get_request(q, WRITE, GFP_ATOMIC);
 if (unlikely(!rq)) {
  kfree(tx_data);
  return -ENOMEM;
 }

 tx_data->msg = msg;
 tx_data->arg = arg;
 rq->end_io = omap_msg_tx_end_io;
 blk_insert_request(q, rq, 0, tx_data);

 schedule_work(&mbox->txq->work);
 return 0;
}
