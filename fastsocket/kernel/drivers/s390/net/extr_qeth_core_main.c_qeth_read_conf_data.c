
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cmd_code; int count; int flags; scalar_t__ cda; } ;
struct qeth_channel {scalar_t__ state; int ccwdev; TYPE_1__ ccw; } ;
struct qeth_card {int wait_q; struct qeth_channel data; } ;
struct ciw {scalar_t__ cmd; int count; } ;
typedef scalar_t__ __u32 ;


 int CCW_FLAG_SLI ;
 scalar_t__ CH_STATE_DOWN ;
 scalar_t__ CH_STATE_RCD ;
 scalar_t__ CH_STATE_RCD_DONE ;
 int CIW_TYPE_RCD ;
 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int LPM_ANYPATH ;
 int QETH_RCD_PARM ;
 int QETH_RCD_TIMEOUT ;
 scalar_t__ __pa (char*) ;
 struct ciw* ccw_device_get_ciw (int ,int ) ;
 int ccw_device_start_timeout (int ,TYPE_1__*,int ,int ,int ,int ) ;
 int get_ccwdev_lock (int ) ;
 int kfree (char*) ;
 char* kzalloc (int,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int qeth_read_conf_data(struct qeth_card *card, void **buffer,
          int *length)
{
 struct ciw *ciw;
 char *rcd_buf;
 int ret;
 struct qeth_channel *channel = &card->data;
 unsigned long flags;




 ciw = ccw_device_get_ciw(channel->ccwdev, CIW_TYPE_RCD);
 if (!ciw || ciw->cmd == 0)
  return -EOPNOTSUPP;
 rcd_buf = kzalloc(ciw->count, GFP_KERNEL | GFP_DMA);
 if (!rcd_buf)
  return -ENOMEM;

 channel->ccw.cmd_code = ciw->cmd;
 channel->ccw.cda = (__u32) __pa(rcd_buf);
 channel->ccw.count = ciw->count;
 channel->ccw.flags = CCW_FLAG_SLI;
 channel->state = CH_STATE_RCD;
 spin_lock_irqsave(get_ccwdev_lock(channel->ccwdev), flags);
 ret = ccw_device_start_timeout(channel->ccwdev, &channel->ccw,
           QETH_RCD_PARM, LPM_ANYPATH, 0,
           QETH_RCD_TIMEOUT);
 spin_unlock_irqrestore(get_ccwdev_lock(channel->ccwdev), flags);
 if (!ret)
  wait_event(card->wait_q,
      (channel->state == CH_STATE_RCD_DONE ||
       channel->state == CH_STATE_DOWN));
 if (channel->state == CH_STATE_DOWN)
  ret = -EIO;
 else
  channel->state = CH_STATE_DOWN;
 if (ret) {
  kfree(rcd_buf);
  *buffer = ((void*)0);
  *length = 0;
 } else {
  *length = ciw->count;
  *buffer = rcd_buf;
 }
 return ret;
}
