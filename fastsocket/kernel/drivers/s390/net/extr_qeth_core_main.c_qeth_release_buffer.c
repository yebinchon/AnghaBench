
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {scalar_t__ rc; int callback; int state; int data; } ;
struct qeth_channel {int wait_q; int iob_lock; } ;


 int BUF_STATE_FREE ;
 int QETH_BUFSIZE ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int memset (int ,int ,int ) ;
 int qeth_send_control_data_cb ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

void qeth_release_buffer(struct qeth_channel *channel,
  struct qeth_cmd_buffer *iob)
{
 unsigned long flags;

 QETH_DBF_TEXT(TRACE, 6, "relbuff");
 spin_lock_irqsave(&channel->iob_lock, flags);
 memset(iob->data, 0, QETH_BUFSIZE);
 iob->state = BUF_STATE_FREE;
 iob->callback = qeth_send_control_data_cb;
 iob->rc = 0;
 spin_unlock_irqrestore(&channel->iob_lock, flags);
 wake_up(&channel->wait_q);
}
