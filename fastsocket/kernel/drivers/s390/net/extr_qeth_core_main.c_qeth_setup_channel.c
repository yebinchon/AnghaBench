
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_channel {int wait_q; int iob_lock; int irq_pending; scalar_t__ io_buf_no; scalar_t__ buf_no; TYPE_1__* iob; } ;
struct TYPE_2__ {char* data; scalar_t__ rc; int callback; struct qeth_channel* channel; int state; } ;


 int BUF_STATE_FREE ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int QETH_BUFSIZE ;
 int QETH_CMD_BUFFER_NO ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int SETUP ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (char*) ;
 scalar_t__ kzalloc (int ,int) ;
 int qeth_send_control_data_cb ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int qeth_setup_channel(struct qeth_channel *channel)
{
 int cnt;

 QETH_DBF_TEXT(SETUP, 2, "setupch");
 for (cnt = 0; cnt < QETH_CMD_BUFFER_NO; cnt++) {
  channel->iob[cnt].data = (char *)
   kzalloc(QETH_BUFSIZE, GFP_DMA|GFP_KERNEL);
  if (channel->iob[cnt].data == ((void*)0))
   break;
  channel->iob[cnt].state = BUF_STATE_FREE;
  channel->iob[cnt].channel = channel;
  channel->iob[cnt].callback = qeth_send_control_data_cb;
  channel->iob[cnt].rc = 0;
 }
 if (cnt < QETH_CMD_BUFFER_NO) {
  while (cnt-- > 0)
   kfree(channel->iob[cnt].data);
  return -ENOMEM;
 }
 channel->buf_no = 0;
 channel->io_buf_no = 0;
 atomic_set(&channel->irq_pending, 0);
 spin_lock_init(&channel->iob_lock);

 init_waitqueue_head(&channel->wait_q);
 return 0;
}
