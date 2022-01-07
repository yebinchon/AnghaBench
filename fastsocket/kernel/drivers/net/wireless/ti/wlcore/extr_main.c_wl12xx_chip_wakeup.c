
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int quirks; } ;


 int WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN ;
 int wl1271_set_block_size (struct wl1271*) ;
 int wl1271_setup (struct wl1271*) ;
 int wl12xx_fetch_firmware (struct wl1271*,int) ;
 int wl12xx_set_power_on (struct wl1271*) ;

__attribute__((used)) static int wl12xx_chip_wakeup(struct wl1271 *wl, bool plt)
{
 int ret = 0;

 ret = wl12xx_set_power_on(wl);
 if (ret < 0)
  goto out;
 if (!wl1271_set_block_size(wl))
  wl->quirks &= ~WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN;



 ret = wl1271_setup(wl);
 if (ret < 0)
  goto out;

 ret = wl12xx_fetch_firmware(wl, plt);
 if (ret < 0)
  goto out;

out:
 return ret;
}
