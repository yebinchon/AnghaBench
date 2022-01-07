
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int sg_enabled; } ;


 int wl1271_acx_sg_enable (struct wl1271*,int ) ;
 int wl12xx_acx_sg_cfg (struct wl1271*) ;

int wl1271_init_pta(struct wl1271 *wl)
{
 int ret;

 ret = wl12xx_acx_sg_cfg(wl);
 if (ret < 0)
  return ret;

 ret = wl1271_acx_sg_enable(wl, wl->sg_enabled);
 if (ret < 0)
  return ret;

 return 0;
}
