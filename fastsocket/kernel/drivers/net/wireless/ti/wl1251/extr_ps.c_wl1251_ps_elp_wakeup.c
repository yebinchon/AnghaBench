
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1251 {int elp; int elp_work; } ;


 int DEBUG_PSM ;
 int ELPCTRL_WAKE_UP ;
 int ELPCTRL_WLAN_READY ;
 int ETIMEDOUT ;
 int HW_ACCESS_ELP_CTRL_REG_ADDR ;
 int WL1251_WAKEUP_TIMEOUT ;
 int cancel_delayed_work (int *) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int wl1251_debug (int ,char*,...) ;
 int wl1251_error (char*) ;
 int wl1251_read_elp (struct wl1251*,int ) ;
 int wl1251_write_elp (struct wl1251*,int ,int ) ;

int wl1251_ps_elp_wakeup(struct wl1251 *wl)
{
 unsigned long timeout, start;
 u32 elp_reg;

 cancel_delayed_work(&wl->elp_work);

 if (!wl->elp)
  return 0;

 wl1251_debug(DEBUG_PSM, "waking up chip from elp");

 start = jiffies;
 timeout = jiffies + msecs_to_jiffies(WL1251_WAKEUP_TIMEOUT);

 wl1251_write_elp(wl, HW_ACCESS_ELP_CTRL_REG_ADDR, ELPCTRL_WAKE_UP);

 elp_reg = wl1251_read_elp(wl, HW_ACCESS_ELP_CTRL_REG_ADDR);





 while (!(elp_reg & ELPCTRL_WLAN_READY)) {
  if (time_after(jiffies, timeout)) {
   wl1251_error("elp wakeup timeout");
   return -ETIMEDOUT;
  }
  msleep(1);
  elp_reg = wl1251_read_elp(wl, HW_ACCESS_ELP_CTRL_REG_ADDR);
 }

 wl1251_debug(DEBUG_PSM, "wakeup time: %u ms",
       jiffies_to_msecs(jiffies - start));

 wl->elp = 0;

 return 0;
}
