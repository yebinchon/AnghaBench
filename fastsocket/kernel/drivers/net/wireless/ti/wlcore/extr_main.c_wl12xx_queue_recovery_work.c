
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {scalar_t__ state; int recovery_work; int hw; int flags; } ;


 int WARN_ON (int) ;
 int WL1271_FLAG_INTENDED_FW_RECOVERY ;
 int WL1271_FLAG_RECOVERY_IN_PROGRESS ;
 scalar_t__ WLCORE_STATE_ON ;
 scalar_t__ WLCORE_STATE_RESTARTING ;
 int ieee80211_queue_work (int ,int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wlcore_disable_interrupts_nosync (struct wl1271*) ;

void wl12xx_queue_recovery_work(struct wl1271 *wl)
{
 WARN_ON(!test_bit(WL1271_FLAG_INTENDED_FW_RECOVERY, &wl->flags));


 if (wl->state == WLCORE_STATE_ON) {
  wl->state = WLCORE_STATE_RESTARTING;
  set_bit(WL1271_FLAG_RECOVERY_IN_PROGRESS, &wl->flags);
  wlcore_disable_interrupts_nosync(wl);
  ieee80211_queue_work(wl->hw, &wl->recovery_work);
 }
}
