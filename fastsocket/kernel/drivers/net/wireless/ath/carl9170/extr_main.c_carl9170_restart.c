
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar9170 {int last_reason; int force_usb_reset; int restart_work; int hw; scalar_t__ needs_full_reset; int registered; TYPE_1__* udev; int pending_restarts; } ;
typedef enum carl9170_restart_reasons { ____Placeholder_carl9170_restart_reasons } carl9170_restart_reasons ;
struct TYPE_2__ {int dev; } ;


 int CARL9170_IDLE ;
 int const CARL9170_RR_NO_REASON ;
 int CARL9170_STARTED ;
 int IS_ACCEPTING_CMD (struct ar9170*) ;
 int WARN_ON (int) ;
 int const __CARL9170_RR_LAST ;
 int atomic_inc_return (int *) ;
 int carl9170_set_state_when (struct ar9170*,int ,int ) ;
 int dev_dbg (int *,char*,int const) ;
 int dev_err (int *,char*,int const) ;
 int ieee80211_queue_work (int ,int *) ;
 int ieee80211_stop_queues (int ) ;

void carl9170_restart(struct ar9170 *ar, const enum carl9170_restart_reasons r)
{
 carl9170_set_state_when(ar, CARL9170_STARTED, CARL9170_IDLE);






 if (atomic_inc_return(&ar->pending_restarts) > 1) {
  dev_dbg(&ar->udev->dev, "ignoring restart (%d)\n", r);
  return;
 }

 ieee80211_stop_queues(ar->hw);

 dev_err(&ar->udev->dev, "restart device (%d)\n", r);

 if (!WARN_ON(r == CARL9170_RR_NO_REASON) ||
     !WARN_ON(r >= __CARL9170_RR_LAST))
  ar->last_reason = r;

 if (!ar->registered)
  return;

 if (!IS_ACCEPTING_CMD(ar) || ar->needs_full_reset)
  ar->force_usb_reset = 1;

 ieee80211_queue_work(ar->hw, &ar->restart_work);






}
