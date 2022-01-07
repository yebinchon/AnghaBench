
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {scalar_t__ bss_type; int basic_rate; int role_id; } ;
struct wl12xx_null_data_template {int dummy; } ;
struct wl1271 {int hw; } ;
struct sk_buff {int len; void* data; } ;


 scalar_t__ BSS_TYPE_IBSS ;
 int CMD_TEMPL_NULL_DATA ;
 int ENOMEM ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* ieee80211_nullfunc_get (int ,int ) ;
 int wl1271_cmd_template_set (struct wl1271*,int ,int ,void*,int,int ,int ) ;
 int wl1271_warning (char*,int) ;
 int wl12xx_wlvif_to_vif (struct wl12xx_vif*) ;

int wl12xx_cmd_build_null_data(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 struct sk_buff *skb = ((void*)0);
 int size;
 void *ptr;
 int ret = -ENOMEM;


 if (wlvif->bss_type == BSS_TYPE_IBSS) {
  size = sizeof(struct wl12xx_null_data_template);
  ptr = ((void*)0);
 } else {
  skb = ieee80211_nullfunc_get(wl->hw,
          wl12xx_wlvif_to_vif(wlvif));
  if (!skb)
   goto out;
  size = skb->len;
  ptr = skb->data;
 }

 ret = wl1271_cmd_template_set(wl, wlvif->role_id,
          CMD_TEMPL_NULL_DATA, ptr, size, 0,
          wlvif->basic_rate);

out:
 dev_kfree_skb(skb);
 if (ret)
  wl1271_warning("cmd buld null data failed %d", ret);

 return ret;

}
