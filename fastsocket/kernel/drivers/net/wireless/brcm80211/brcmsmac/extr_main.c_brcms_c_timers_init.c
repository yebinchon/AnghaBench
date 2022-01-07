
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {int wiphy; void* radio_timer; int wl; void* wdtimer; } ;


 int brcms_c_radio_timer ;
 int brcms_c_watchdog_by_timer ;
 void* brcms_init_timer (int ,int ,struct brcms_c_info*,char*) ;
 int wiphy_err (int ,char*,int) ;

__attribute__((used)) static bool brcms_c_timers_init(struct brcms_c_info *wlc, int unit)
{
 wlc->wdtimer = brcms_init_timer(wlc->wl, brcms_c_watchdog_by_timer,
  wlc, "watchdog");
 if (!wlc->wdtimer) {
  wiphy_err(wlc->wiphy, "wl%d:  wl_init_timer for wdtimer "
     "failed\n", unit);
  goto fail;
 }

 wlc->radio_timer = brcms_init_timer(wlc->wl, brcms_c_radio_timer,
  wlc, "radio");
 if (!wlc->radio_timer) {
  wiphy_err(wlc->wiphy, "wl%d:  wl_init_timer for radio_timer "
     "failed\n", unit);
  goto fail;
 }

 return 1;

 fail:
 return 0;
}
