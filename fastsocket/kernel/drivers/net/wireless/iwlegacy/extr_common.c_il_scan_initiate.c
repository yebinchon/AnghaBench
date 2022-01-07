
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {int scan_check; int workqueue; int status; TYPE_1__* ops; int scan_start; int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int (* request_scan ) (struct il_priv*,struct ieee80211_vif*) ;} ;


 int D_SCAN (char*) ;
 int EBUSY ;
 int EIO ;
 int IL_SCAN_CHECK_WATCHDOG ;
 int IL_WARN (char*) ;
 int S_SCANNING ;
 int S_SCAN_ABORTING ;
 int S_SCAN_HW ;
 int cancel_delayed_work (int *) ;
 int clear_bit (int ,int *) ;
 int il_is_ready_rf (struct il_priv*) ;
 int jiffies ;
 int lockdep_assert_held (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int set_bit (int ,int *) ;
 int stub1 (struct il_priv*,struct ieee80211_vif*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
il_scan_initiate(struct il_priv *il, struct ieee80211_vif *vif)
{
 int ret;

 lockdep_assert_held(&il->mutex);

 cancel_delayed_work(&il->scan_check);

 if (!il_is_ready_rf(il)) {
  IL_WARN("Request scan called when driver not ready.\n");
  return -EIO;
 }

 if (test_bit(S_SCAN_HW, &il->status)) {
  D_SCAN("Multiple concurrent scan requests in parallel.\n");
  return -EBUSY;
 }

 if (test_bit(S_SCAN_ABORTING, &il->status)) {
  D_SCAN("Scan request while abort pending.\n");
  return -EBUSY;
 }

 D_SCAN("Starting scan...\n");

 set_bit(S_SCANNING, &il->status);
 il->scan_start = jiffies;

 ret = il->ops->request_scan(il, vif);
 if (ret) {
  clear_bit(S_SCANNING, &il->status);
  return ret;
 }

 queue_delayed_work(il->workqueue, &il->scan_check,
      IL_SCAN_CHECK_WATCHDOG);

 return 0;
}
