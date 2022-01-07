
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_channel {scalar_t__ state; int ccwdev; } ;
struct qeth_card {int wait_q; } ;


 struct qeth_card* CARD_FROM_CDEV (int ) ;
 scalar_t__ CH_STATE_DOWN ;
 scalar_t__ CH_STATE_STOPPED ;
 int ERESTARTSYS ;
 int ETIME ;
 int QETH_CLEAR_CHANNEL_PARM ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_TIMEOUT ;
 int TRACE ;
 int ccw_device_clear (int ,int ) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int qeth_clear_channel(struct qeth_channel *channel)
{
 unsigned long flags;
 struct qeth_card *card;
 int rc;

 QETH_DBF_TEXT(TRACE, 3, "clearch");
 card = CARD_FROM_CDEV(channel->ccwdev);
 spin_lock_irqsave(get_ccwdev_lock(channel->ccwdev), flags);
 rc = ccw_device_clear(channel->ccwdev, QETH_CLEAR_CHANNEL_PARM);
 spin_unlock_irqrestore(get_ccwdev_lock(channel->ccwdev), flags);

 if (rc)
  return rc;
 rc = wait_event_interruptible_timeout(card->wait_q,
   channel->state == CH_STATE_STOPPED, QETH_TIMEOUT);
 if (rc == -ERESTARTSYS)
  return rc;
 if (channel->state != CH_STATE_STOPPED)
  return -ETIME;
 channel->state = CH_STATE_DOWN;
 return 0;
}
