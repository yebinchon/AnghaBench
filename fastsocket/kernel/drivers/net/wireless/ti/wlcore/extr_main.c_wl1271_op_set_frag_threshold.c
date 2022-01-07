
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1271 {scalar_t__ state; int mutex; } ;
struct ieee80211_hw {struct wl1271* priv; } ;


 int EAGAIN ;
 scalar_t__ WLCORE_STATE_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wl1271_acx_frag_threshold (struct wl1271*,int ) ;
 int wl1271_ps_elp_sleep (struct wl1271*) ;
 int wl1271_ps_elp_wakeup (struct wl1271*) ;
 int wl1271_warning (char*,int) ;

__attribute__((used)) static int wl1271_op_set_frag_threshold(struct ieee80211_hw *hw, u32 value)
{
 struct wl1271 *wl = hw->priv;
 int ret = 0;

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON)) {
  ret = -EAGAIN;
  goto out;
 }

 ret = wl1271_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;

 ret = wl1271_acx_frag_threshold(wl, value);
 if (ret < 0)
  wl1271_warning("wl1271_op_set_frag_threshold failed: %d", ret);

 wl1271_ps_elp_sleep(wl);

out:
 mutex_unlock(&wl->mutex);

 return ret;
}
