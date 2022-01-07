
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wl1251_acx_wr_tbtt_and_dtim {int dtim; int tbtt; } ;
struct wl1251 {int dummy; } ;


 int ACX_WR_TBTT_AND_DTIM ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl1251_acx_wr_tbtt_and_dtim*) ;
 struct wl1251_acx_wr_tbtt_and_dtim* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct wl1251_acx_wr_tbtt_and_dtim*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_wr_tbtt_and_dtim(struct wl1251 *wl, u16 tbtt, u8 dtim)
{
 struct wl1251_acx_wr_tbtt_and_dtim *acx;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx tbtt and dtim");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->tbtt = tbtt;
 acx->dtim = dtim;

 ret = wl1251_cmd_configure(wl, ACX_WR_TBTT_AND_DTIM,
       acx, sizeof(*acx));
 if (ret < 0) {
  wl1251_warning("failed to set tbtt and dtim: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
