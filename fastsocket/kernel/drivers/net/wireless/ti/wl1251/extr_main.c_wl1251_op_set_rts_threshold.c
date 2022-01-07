
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct wl1251 {int mutex; } ;
struct ieee80211_hw {struct wl1251* priv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wl1251_acx_rts_threshold (struct wl1251*,int ) ;
 int wl1251_ps_elp_sleep (struct wl1251*) ;
 int wl1251_ps_elp_wakeup (struct wl1251*) ;
 int wl1251_warning (char*,int) ;

__attribute__((used)) static int wl1251_op_set_rts_threshold(struct ieee80211_hw *hw, u32 value)
{
 struct wl1251 *wl = hw->priv;
 int ret;

 mutex_lock(&wl->mutex);

 ret = wl1251_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;

 ret = wl1251_acx_rts_threshold(wl, (u16) value);
 if (ret < 0)
  wl1251_warning("wl1251_op_set_rts_threshold failed: %d", ret);

 wl1251_ps_elp_sleep(wl);

out:
 mutex_unlock(&wl->mutex);

 return ret;
}
