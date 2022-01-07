
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct p54_trap {int frequency; int event; } ;
struct p54_hdr {scalar_t__ data; } ;
struct p54_common {TYPE_1__* hw; int vif; } ;
struct TYPE_2__ {int wiphy; } ;
 int ieee80211_beacon_loss (int ) ;
 int le16_to_cpu (int ) ;
 int wiphy_info (int ,char*,int,...) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

__attribute__((used)) static void p54_rx_trap(struct p54_common *priv, struct sk_buff *skb)
{
 struct p54_hdr *hdr = (struct p54_hdr *) skb->data;
 struct p54_trap *trap = (struct p54_trap *) hdr->data;
 u16 event = le16_to_cpu(trap->event);
 u16 freq = le16_to_cpu(trap->frequency);

 switch (event) {
 case 135:
  break;
 case 131:
  wiphy_info(priv->hw->wiphy, "radar (freq:%d MHz)\n", freq);
  break;
 case 132:
  if (priv->vif)
   ieee80211_beacon_loss(priv->vif);
  break;
 case 130:
  break;
 case 129:
  break;
 case 128:
  break;
 case 134:
  wiphy_rfkill_set_hw_state(priv->hw->wiphy, 1);
  break;
 case 133:
  wiphy_rfkill_set_hw_state(priv->hw->wiphy, 0);
  break;
 default:
  wiphy_info(priv->hw->wiphy, "received event:%x freq:%d\n",
      event, freq);
  break;
 }
}
