
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wl1271_command {int dummy; } ;
struct wl1271 {scalar_t__ state; int mutex; TYPE_1__* hw; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int wiphy; } ;


 int DEBUG_TESTMODE ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WL1271_TM_ATTR_DATA ;
 size_t WL1271_TM_ATTR_IE_ID ;
 scalar_t__ WLCORE_STATE_ON ;
 struct sk_buff* cfg80211_testmode_alloc_reply_skb (int ,int) ;
 int cfg80211_testmode_reply (struct sk_buff*) ;
 int kfree (struct wl1271_command*) ;
 int kfree_skb (struct sk_buff*) ;
 struct wl1271_command* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nla_get_u8 (struct nlattr*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct wl1271_command*) ;
 scalar_t__ unlikely (int) ;
 int wl1271_cmd_interrogate (struct wl1271*,int ,struct wl1271_command*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_ps_elp_sleep (struct wl1271*) ;
 int wl1271_ps_elp_wakeup (struct wl1271*) ;
 int wl1271_warning (char*,int) ;

__attribute__((used)) static int wl1271_tm_cmd_interrogate(struct wl1271 *wl, struct nlattr *tb[])
{
 int ret;
 struct wl1271_command *cmd;
 struct sk_buff *skb;
 u8 ie_id;

 wl1271_debug(DEBUG_TESTMODE, "testmode cmd interrogate");

 if (!tb[WL1271_TM_ATTR_IE_ID])
  return -EINVAL;

 ie_id = nla_get_u8(tb[WL1271_TM_ATTR_IE_ID]);

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON)) {
  ret = -EINVAL;
  goto out;
 }

 ret = wl1271_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out_sleep;
 }

 ret = wl1271_cmd_interrogate(wl, ie_id, cmd, sizeof(*cmd));
 if (ret < 0) {
  wl1271_warning("testmode cmd interrogate failed: %d", ret);
  goto out_free;
 }

 skb = cfg80211_testmode_alloc_reply_skb(wl->hw->wiphy, sizeof(*cmd));
 if (!skb) {
  ret = -ENOMEM;
  goto out_free;
 }

 if (nla_put(skb, WL1271_TM_ATTR_DATA, sizeof(*cmd), cmd)) {
  kfree_skb(skb);
  ret = -EMSGSIZE;
  goto out_free;
 }

 ret = cfg80211_testmode_reply(skb);
 if (ret < 0)
  goto out_free;

out_free:
 kfree(cmd);
out_sleep:
 wl1271_ps_elp_sleep(wl);
out:
 mutex_unlock(&wl->mutex);

 return ret;
}
