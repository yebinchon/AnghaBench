
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1271 {int mutex; int fem_manuf; TYPE_1__* hw; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int wiphy; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int PLT_FEM_DETECT ;
 int WL1271_TM_ATTR_DATA ;
 struct sk_buff* cfg80211_testmode_alloc_reply_skb (int ,int) ;
 int cfg80211_testmode_reply (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,int *) ;
 int nla_total_size (int) ;
 int wl1271_plt_start (struct wl1271*,int ) ;
 int wl1271_plt_stop (struct wl1271*) ;

__attribute__((used)) static int wl1271_tm_detect_fem(struct wl1271 *wl, struct nlattr *tb[])
{

 int ret, len;
 struct sk_buff *skb;

 ret = wl1271_plt_start(wl, PLT_FEM_DETECT);
 if (ret < 0)
  goto out;

 mutex_lock(&wl->mutex);

 len = nla_total_size(sizeof(wl->fem_manuf));
 skb = cfg80211_testmode_alloc_reply_skb(wl->hw->wiphy, len);
 if (!skb) {
  ret = -ENOMEM;
  goto out_mutex;
 }

 if (nla_put(skb, WL1271_TM_ATTR_DATA, sizeof(wl->fem_manuf),
           &wl->fem_manuf)) {
  kfree_skb(skb);
  ret = -EMSGSIZE;
  goto out_mutex;
 }

 ret = cfg80211_testmode_reply(skb);

out_mutex:
 mutex_unlock(&wl->mutex);


 wl1271_plt_stop(wl);
out:
 return ret;
}
