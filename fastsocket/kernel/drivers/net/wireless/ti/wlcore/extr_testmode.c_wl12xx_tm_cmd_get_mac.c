
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wl1271 {int fuse_oui_addr; int fuse_nic_addr; int mutex; TYPE_1__* hw; int plt; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int wiphy; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int WL1271_TM_ATTR_DATA ;
 struct sk_buff* cfg80211_testmode_alloc_reply_skb (int ,int) ;
 int cfg80211_testmode_reply (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,scalar_t__*) ;

__attribute__((used)) static int wl12xx_tm_cmd_get_mac(struct wl1271 *wl, struct nlattr *tb[])
{
 struct sk_buff *skb;
 u8 mac_addr[ETH_ALEN];
 int ret = 0;

 mutex_lock(&wl->mutex);

 if (!wl->plt) {
  ret = -EINVAL;
  goto out;
 }

 if (wl->fuse_oui_addr == 0 && wl->fuse_nic_addr == 0) {
  ret = -EOPNOTSUPP;
  goto out;
 }

 mac_addr[0] = (u8)(wl->fuse_oui_addr >> 16);
 mac_addr[1] = (u8)(wl->fuse_oui_addr >> 8);
 mac_addr[2] = (u8) wl->fuse_oui_addr;
 mac_addr[3] = (u8)(wl->fuse_nic_addr >> 16);
 mac_addr[4] = (u8)(wl->fuse_nic_addr >> 8);
 mac_addr[5] = (u8) wl->fuse_nic_addr;

 skb = cfg80211_testmode_alloc_reply_skb(wl->hw->wiphy, ETH_ALEN);
 if (!skb) {
  ret = -ENOMEM;
  goto out;
 }

 if (nla_put(skb, WL1271_TM_ATTR_DATA, ETH_ALEN, mac_addr)) {
  kfree_skb(skb);
  ret = -EMSGSIZE;
  goto out;
 }

 ret = cfg80211_testmode_reply(skb);
 if (ret < 0)
  goto out;

out:
 mutex_unlock(&wl->mutex);
 return ret;
}
