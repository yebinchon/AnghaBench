
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int fw_ver_str; int id; } ;
struct wl1271 {scalar_t__ state; int plt; int plt_mode; int mutex; TYPE_3__ chip; TYPE_2__* ops; TYPE_1__* hw; } ;
struct wiphy {int fw_version; int hw_version; } ;
typedef enum plt_mode { ____Placeholder_plt_mode } plt_mode ;
struct TYPE_5__ {int (* plt_init ) (struct wl1271*) ;} ;
struct TYPE_4__ {struct wiphy* wiphy; } ;


 int EBUSY ;
 int PLT_OFF ;
 int WL1271_BOOT_RETRIES ;
 scalar_t__ WLCORE_STATE_OFF ;
 int WLCORE_STATE_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strncpy (int ,int ,int) ;
 int stub1 (struct wl1271*) ;
 int wl1271_error (char*,int) ;
 int wl1271_notice (char*,...) ;
 int wl1271_power_off (struct wl1271*) ;
 int wl12xx_chip_wakeup (struct wl1271*,int) ;

int wl1271_plt_start(struct wl1271 *wl, const enum plt_mode plt_mode)
{
 int retries = WL1271_BOOT_RETRIES;
 struct wiphy *wiphy = wl->hw->wiphy;

 static const char* const PLT_MODE[] = {
  "PLT_OFF",
  "PLT_ON",
  "PLT_FEM_DETECT"
 };

 int ret;

 mutex_lock(&wl->mutex);

 wl1271_notice("power up");

 if (wl->state != WLCORE_STATE_OFF) {
  wl1271_error("cannot go into PLT state because not "
        "in off state: %d", wl->state);
  ret = -EBUSY;
  goto out;
 }


 wl->plt = 1;
 wl->plt_mode = plt_mode;

 while (retries) {
  retries--;
  ret = wl12xx_chip_wakeup(wl, 1);
  if (ret < 0)
   goto power_off;

  ret = wl->ops->plt_init(wl);
  if (ret < 0)
   goto power_off;

  wl->state = WLCORE_STATE_ON;
  wl1271_notice("firmware booted in PLT mode %s (%s)",
         PLT_MODE[plt_mode],
         wl->chip.fw_ver_str);


  wiphy->hw_version = wl->chip.id;
  strncpy(wiphy->fw_version, wl->chip.fw_ver_str,
   sizeof(wiphy->fw_version));

  goto out;

power_off:
  wl1271_power_off(wl);
 }

 wl->plt = 0;
 wl->plt_mode = PLT_OFF;

 wl1271_error("firmware boot in PLT mode failed despite %d retries",
       WL1271_BOOT_RETRIES);
out:
 mutex_unlock(&wl->mutex);

 return ret;
}
