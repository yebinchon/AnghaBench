
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qeth_cmd_buffer {void (* callback ) (struct qeth_channel*,struct qeth_cmd_buffer*) ;int data; } ;
struct TYPE_3__ {scalar_t__ cda; int count; } ;
struct qeth_channel {scalar_t__ state; int irq_pending; int ccwdev; TYPE_1__ ccw; } ;
struct qeth_card {int wait_q; } ;
struct ccw1 {int dummy; } ;
typedef int addr_t ;
typedef scalar_t__ __u32 ;


 struct qeth_card* CARD_FROM_CDEV (int ) ;
 scalar_t__ CH_STATE_UP ;
 int ERESTARTSYS ;
 int ETIME ;
 int QETH_BUFSIZE ;
 int QETH_DBF_MESSAGE (int,char*,int) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 int QETH_TIMEOUT ;
 int READ_CCW ;
 int SETUP ;
 scalar_t__ __pa (int ) ;
 scalar_t__ atomic_cmpxchg (int *,int ,int) ;
 int atomic_set (int *,int ) ;
 int ccw_device_start (int ,TYPE_1__*,int ,int ,int ) ;
 int get_ccwdev_lock (int ) ;
 int memcpy (TYPE_1__*,int ,int) ;
 int qeth_clear_cmd_buffers (struct qeth_channel*) ;
 struct qeth_cmd_buffer* qeth_get_buffer (struct qeth_channel*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wait_event (int ,int) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int qeth_idx_activate_get_answer(struct qeth_channel *channel,
  void (*idx_reply_cb)(struct qeth_channel *,
   struct qeth_cmd_buffer *))
{
 struct qeth_cmd_buffer *iob;
 unsigned long flags;
 int rc;
 struct qeth_card *card;

 QETH_DBF_TEXT(SETUP, 2, "idxanswr");
 card = CARD_FROM_CDEV(channel->ccwdev);
 iob = qeth_get_buffer(channel);
 iob->callback = idx_reply_cb;
 memcpy(&channel->ccw, READ_CCW, sizeof(struct ccw1));
 channel->ccw.count = QETH_BUFSIZE;
 channel->ccw.cda = (__u32) __pa(iob->data);

 wait_event(card->wait_q,
     atomic_cmpxchg(&channel->irq_pending, 0, 1) == 0);
 QETH_DBF_TEXT(SETUP, 6, "noirqpnd");
 spin_lock_irqsave(get_ccwdev_lock(channel->ccwdev), flags);
 rc = ccw_device_start(channel->ccwdev,
         &channel->ccw, (addr_t) iob, 0, 0);
 spin_unlock_irqrestore(get_ccwdev_lock(channel->ccwdev), flags);

 if (rc) {
  QETH_DBF_MESSAGE(2, "Error2 in activating channel rc=%d\n", rc);
  QETH_DBF_TEXT_(SETUP, 2, "2err%d", rc);
  atomic_set(&channel->irq_pending, 0);
  wake_up(&card->wait_q);
  return rc;
 }
 rc = wait_event_interruptible_timeout(card->wait_q,
    channel->state == CH_STATE_UP, QETH_TIMEOUT);
 if (rc == -ERESTARTSYS)
  return rc;
 if (channel->state != CH_STATE_UP) {
  rc = -ETIME;
  QETH_DBF_TEXT_(SETUP, 2, "3err%d", rc);
  qeth_clear_cmd_buffers(channel);
 } else
  rc = 0;
 return rc;
}
