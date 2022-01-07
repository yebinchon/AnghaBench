
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int * ptable; } ;


 size_t PART_BOOT ;
 int WL1271_POWER_ON_SLEEP ;
 int WL1271_PRE_POWER_ON_SLEEP ;
 int msleep (int ) ;
 int wl1271_io_init (struct wl1271*) ;
 int wl1271_io_reset (struct wl1271*) ;
 int wl1271_power_off (struct wl1271*) ;
 int wl1271_power_on (struct wl1271*) ;
 int wlcore_fw_wakeup (struct wl1271*) ;
 int wlcore_set_partition (struct wl1271*,int *) ;

__attribute__((used)) static int wl12xx_set_power_on(struct wl1271 *wl)
{
 int ret;

 msleep(WL1271_PRE_POWER_ON_SLEEP);
 ret = wl1271_power_on(wl);
 if (ret < 0)
  goto out;
 msleep(WL1271_POWER_ON_SLEEP);
 wl1271_io_reset(wl);
 wl1271_io_init(wl);

 ret = wlcore_set_partition(wl, &wl->ptable[PART_BOOT]);
 if (ret < 0)
  goto fail;


 ret = wlcore_fw_wakeup(wl);
 if (ret < 0)
  goto fail;

out:
 return ret;

fail:
 wl1271_power_off(wl);
 return ret;
}
