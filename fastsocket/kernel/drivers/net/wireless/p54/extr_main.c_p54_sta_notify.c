
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54_common {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; } ;
struct ieee80211_hw {struct p54_common* priv; } ;
typedef enum sta_notify_cmd { ____Placeholder_sta_notify_cmd } sta_notify_cmd ;



 int p54_sta_unlock (struct p54_common*,int ) ;

__attribute__((used)) static void p54_sta_notify(struct ieee80211_hw *dev, struct ieee80211_vif *vif,
         enum sta_notify_cmd notify_cmd,
         struct ieee80211_sta *sta)
{
 struct p54_common *priv = dev->priv;

 switch (notify_cmd) {
 case 128:

  p54_sta_unlock(priv, sta->addr);
  break;
 default:
  break;
 }
}
