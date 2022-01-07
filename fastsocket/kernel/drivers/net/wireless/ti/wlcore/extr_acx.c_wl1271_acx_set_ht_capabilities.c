
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wl1271_acx_ht_capabilities {int ht_capabilites; int hlid; int ampdu_min_spacing; int ampdu_max_length; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_sta_ht_cap {int ampdu_density; int ampdu_factor; int cap; scalar_t__ ht_supported; } ;


 int ACX_PEER_HT_CAP ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WL12XX_HT_CAP_HT_OPERATION ;
 int cpu_to_le32 (int ) ;
 int kfree (struct wl1271_acx_ht_capabilities*) ;
 struct wl1271_acx_ht_capabilities* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl1271_acx_ht_capabilities*,int) ;
 int wl1271_debug (int ,char*,scalar_t__,int ) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_set_ht_capabilities(struct wl1271 *wl,
        struct ieee80211_sta_ht_cap *ht_cap,
        bool allow_ht_operation, u8 hlid)
{
 struct wl1271_acx_ht_capabilities *acx;
 int ret = 0;
 u32 ht_capabilites = 0;

 wl1271_debug(DEBUG_ACX, "acx ht capabilities setting "
       "sta supp: %d sta cap: %d", ht_cap->ht_supported,
       ht_cap->cap);

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 if (allow_ht_operation && ht_cap->ht_supported) {

  ht_capabilites = ht_cap->cap;





  ht_capabilites |= WL12XX_HT_CAP_HT_OPERATION;


  acx->ampdu_max_length = ht_cap->ampdu_factor;
  acx->ampdu_min_spacing = ht_cap->ampdu_density;
 }

 acx->hlid = hlid;
 acx->ht_capabilites = cpu_to_le32(ht_capabilites);

 ret = wl1271_cmd_configure(wl, ACX_PEER_HT_CAP, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx ht capabilities setting failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
