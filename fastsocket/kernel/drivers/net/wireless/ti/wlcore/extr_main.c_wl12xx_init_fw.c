
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int fw_ver_str; int id; } ;
struct wl1271 {int state; scalar_t__ enable_11a; TYPE_3__ chip; int mutex; int netstack_work; TYPE_2__* ops; TYPE_1__* hw; } ;
struct wiphy {TYPE_4__** bands; int fw_version; int hw_version; } ;
struct TYPE_8__ {scalar_t__ n_channels; } ;
struct TYPE_6__ {int (* boot ) (struct wl1271*) ;} ;
struct TYPE_5__ {struct wiphy* wiphy; } ;


 int DEBUG_MAC80211 ;
 size_t IEEE80211_BAND_5GHZ ;
 int WL1271_BOOT_RETRIES ;
 int WLCORE_STATE_ON ;
 int cancel_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strncpy (int ,int ,int) ;
 int stub1 (struct wl1271*) ;
 int wl1271_debug (int ,char*,char*) ;
 int wl1271_error (char*,int) ;
 int wl1271_flush_deferred_work (struct wl1271*) ;
 int wl1271_hw_init (struct wl1271*) ;
 int wl1271_info (char*,int ) ;
 int wl1271_power_off (struct wl1271*) ;
 int wl12xx_chip_wakeup (struct wl1271*,int) ;
 int wlcore_disable_interrupts (struct wl1271*) ;

__attribute__((used)) static int wl12xx_init_fw(struct wl1271 *wl)
{
 int retries = WL1271_BOOT_RETRIES;
 bool booted = 0;
 struct wiphy *wiphy = wl->hw->wiphy;
 int ret;

 while (retries) {
  retries--;
  ret = wl12xx_chip_wakeup(wl, 0);
  if (ret < 0)
   goto power_off;

  ret = wl->ops->boot(wl);
  if (ret < 0)
   goto power_off;

  ret = wl1271_hw_init(wl);
  if (ret < 0)
   goto irq_disable;

  booted = 1;
  break;

irq_disable:
  mutex_unlock(&wl->mutex);







  wlcore_disable_interrupts(wl);
  wl1271_flush_deferred_work(wl);
  cancel_work_sync(&wl->netstack_work);
  mutex_lock(&wl->mutex);
power_off:
  wl1271_power_off(wl);
 }

 if (!booted) {
  wl1271_error("firmware boot failed despite %d retries",
        WL1271_BOOT_RETRIES);
  goto out;
 }

 wl1271_info("firmware booted (%s)", wl->chip.fw_ver_str);


 wiphy->hw_version = wl->chip.id;
 strncpy(wiphy->fw_version, wl->chip.fw_ver_str,
  sizeof(wiphy->fw_version));





 if (!wl->enable_11a)
  wiphy->bands[IEEE80211_BAND_5GHZ]->n_channels = 0;

 wl1271_debug(DEBUG_MAC80211, "11a is %ssupported",
       wl->enable_11a ? "" : "not ");

 wl->state = WLCORE_STATE_ON;
out:
 return ret;
}
