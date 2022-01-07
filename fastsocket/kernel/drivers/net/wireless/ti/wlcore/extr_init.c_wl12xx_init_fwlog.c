
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int quirks; } ;


 int WLCORE_QUIRK_FWLOG_NOT_IMPLEMENTED ;
 int wl12xx_cmd_config_fwlog (struct wl1271*) ;

__attribute__((used)) static int wl12xx_init_fwlog(struct wl1271 *wl)
{
 int ret;

 if (wl->quirks & WLCORE_QUIRK_FWLOG_NOT_IMPLEMENTED)
  return 0;

 ret = wl12xx_cmd_config_fwlog(wl);
 if (ret < 0)
  return ret;

 return 0;
}
