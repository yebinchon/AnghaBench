
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {void* osc_start_delay; void* lpf_bandwidth; void* ref_clock; scalar_t__ rx_ed_threshold; scalar_t__ rx_rssi_threshold; scalar_t__ mcast_window; scalar_t__ sbss_offset; void* basic_rate_mask; void* truncate; void* timer; void* rxhw; void* max_rx; void* rx_addr; } ;
struct TYPE_7__ {void* unalloc0; void* wakeup_timer; void* rxhw; void* max_rx; void* rx_addr; int rts_rates; void* basic_rate_mask; } ;
struct p54_setup_mac {int rx_antenna; TYPE_4__ v2; TYPE_3__ v1; scalar_t__ rx_align; int bssid; int mac_addr; void* mac_mode; } ;
struct p54_common {int mode; int filter_flags; int rx_diversity_mask; int fw_var; int basic_rate_mask; int rx_end; int rx_mtu; int rxhw; int wakeup_timer; int phy_idle; int bssid; int mac_addr; TYPE_2__* hw; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ conf; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int FIF_OTHER_BSS ;
 int FIF_PROMISC_IN_BSS ;
 int GFP_ATOMIC ;
 int IEEE80211_CONF_IDLE ;





 int P54_CONTROL_TYPE_SETUP ;
 int P54_FILTER_TYPE_AP ;
 int P54_FILTER_TYPE_HIBERNATE ;
 int P54_FILTER_TYPE_IBSS ;
 int P54_FILTER_TYPE_PROMISCUOUS ;
 int P54_FILTER_TYPE_STATION ;
 int P54_FILTER_TYPE_TRANSPARENT ;
 int P54_HDR_FLAG_CONTROL_OPSET ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int) ;
 struct sk_buff* p54_alloc_skb (struct p54_common*,int ,int,int ,int ) ;
 int p54_tx (struct p54_common*,struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;

int p54_setup_mac(struct p54_common *priv)
{
 struct sk_buff *skb;
 struct p54_setup_mac *setup;
 u16 mode;

 skb = p54_alloc_skb(priv, P54_HDR_FLAG_CONTROL_OPSET, sizeof(*setup),
       P54_CONTROL_TYPE_SETUP, GFP_ATOMIC);
 if (!skb)
  return -ENOMEM;

 setup = (struct p54_setup_mac *) skb_put(skb, sizeof(*setup));
 if (!(priv->hw->conf.flags & IEEE80211_CONF_IDLE)) {
  switch (priv->mode) {
  case 128:
   mode = P54_FILTER_TYPE_STATION;
   break;
  case 131:
   mode = P54_FILTER_TYPE_AP;
   break;
  case 132:
  case 130:
   mode = P54_FILTER_TYPE_IBSS;
   break;
  case 129:
   mode = P54_FILTER_TYPE_PROMISCUOUS;
   break;
  default:
   mode = P54_FILTER_TYPE_HIBERNATE;
   break;
  }





  if (((priv->filter_flags & FIF_PROMISC_IN_BSS) ||
       (priv->filter_flags & FIF_OTHER_BSS)) &&
      (mode != P54_FILTER_TYPE_PROMISCUOUS))
   mode |= P54_FILTER_TYPE_TRANSPARENT;
 } else {
  mode = P54_FILTER_TYPE_HIBERNATE;
 }

 setup->mac_mode = cpu_to_le16(mode);
 memcpy(setup->mac_addr, priv->mac_addr, ETH_ALEN);
 memcpy(setup->bssid, priv->bssid, ETH_ALEN);
 setup->rx_antenna = 2 & priv->rx_diversity_mask;
 setup->rx_align = 0;
 if (priv->fw_var < 0x500) {
  setup->v1.basic_rate_mask = cpu_to_le32(priv->basic_rate_mask);
  memset(setup->v1.rts_rates, 0, 8);
  setup->v1.rx_addr = cpu_to_le32(priv->rx_end);
  setup->v1.max_rx = cpu_to_le16(priv->rx_mtu);
  setup->v1.rxhw = cpu_to_le16(priv->rxhw);
  setup->v1.wakeup_timer = cpu_to_le16(priv->wakeup_timer);
  setup->v1.unalloc0 = cpu_to_le16(0);
 } else {
  setup->v2.rx_addr = cpu_to_le32(priv->rx_end);
  setup->v2.max_rx = cpu_to_le16(priv->rx_mtu);
  setup->v2.rxhw = cpu_to_le16(priv->rxhw);
  setup->v2.timer = cpu_to_le16(priv->wakeup_timer);
  setup->v2.truncate = cpu_to_le16(48896);
  setup->v2.basic_rate_mask = cpu_to_le32(priv->basic_rate_mask);
  setup->v2.sbss_offset = 0;
  setup->v2.mcast_window = 0;
  setup->v2.rx_rssi_threshold = 0;
  setup->v2.rx_ed_threshold = 0;
  setup->v2.ref_clock = cpu_to_le32(644245094);
  setup->v2.lpf_bandwidth = cpu_to_le16(65535);
  setup->v2.osc_start_delay = cpu_to_le16(65535);
 }
 p54_tx(priv, skb);
 priv->phy_idle = mode == P54_FILTER_TYPE_HIBERNATE;
 return 0;
}
