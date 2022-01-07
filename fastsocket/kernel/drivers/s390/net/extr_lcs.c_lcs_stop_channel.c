
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lcs_channel {scalar_t__ state; int wait_q; TYPE_1__* ccwdev; } ;
typedef int addr_t ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ LCS_CH_STATE_HALTED ;
 scalar_t__ LCS_CH_STATE_INIT ;
 scalar_t__ LCS_CH_STATE_STOPPED ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_DBF_TEXT_ (int,int ,char*,int ) ;
 int ccw_device_halt (TYPE_1__*,int ) ;
 int dev_name (int *) ;
 int get_ccwdev_lock (TYPE_1__*) ;
 int lcs_clear_channel (struct lcs_channel*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int trace ;
 int wait_event (int ,int) ;

__attribute__((used)) static int
lcs_stop_channel(struct lcs_channel *channel)
{
 unsigned long flags;
 int rc;

 if (channel->state == LCS_CH_STATE_STOPPED)
  return 0;
 LCS_DBF_TEXT(4,trace,"haltsch");
 LCS_DBF_TEXT_(4, trace, "%s", dev_name(&channel->ccwdev->dev));
 channel->state = LCS_CH_STATE_INIT;
 spin_lock_irqsave(get_ccwdev_lock(channel->ccwdev), flags);
 rc = ccw_device_halt(channel->ccwdev, (addr_t) channel);
 spin_unlock_irqrestore(get_ccwdev_lock(channel->ccwdev), flags);
 if (rc) {
  LCS_DBF_TEXT_(4, trace, "ehsc%s",
         dev_name(&channel->ccwdev->dev));
  return rc;
 }

 wait_event(channel->wait_q, (channel->state == LCS_CH_STATE_HALTED));
 lcs_clear_channel(channel);
 return 0;
}
