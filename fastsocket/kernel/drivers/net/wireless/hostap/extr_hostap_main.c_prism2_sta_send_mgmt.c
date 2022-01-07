
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {struct net_device* dev; scalar_t__ cb; } ;
struct net_device {int * dev_addr; } ;
struct hostap_skb_tx_data {int iface; int magic; scalar_t__ bssid; scalar_t__ sa; scalar_t__ da; int frame_control; } ;
struct hostap_ieee80211_mgmt {int iface; int magic; scalar_t__ bssid; scalar_t__ sa; scalar_t__ da; int frame_control; } ;
struct TYPE_3__ {struct net_device* dev; } ;
typedef TYPE_1__ local_info_t ;


 int ENOMEM ;
 size_t ETH_ALEN ;
 int HOSTAP_SKB_TX_DATA_MAGIC ;
 int IEEE80211_FTYPE_MGMT ;
 int IEEE80211_MGMT_HDR_LEN ;
 int cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int memcpy (scalar_t__,int *,size_t) ;
 int memset (struct hostap_skb_tx_data*,int ,int) ;
 int netdev_priv (struct net_device*) ;
 scalar_t__ skb_put (struct sk_buff*,size_t) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;

int prism2_sta_send_mgmt(local_info_t *local, u8 *dst, u16 stype,
    u8 *body, size_t bodylen)
{
 struct sk_buff *skb;
 struct hostap_ieee80211_mgmt *mgmt;
 struct hostap_skb_tx_data *meta;
 struct net_device *dev = local->dev;

 skb = dev_alloc_skb(IEEE80211_MGMT_HDR_LEN + bodylen);
 if (skb == ((void*)0))
  return -ENOMEM;

 mgmt = (struct hostap_ieee80211_mgmt *)
  skb_put(skb, IEEE80211_MGMT_HDR_LEN);
 memset(mgmt, 0, IEEE80211_MGMT_HDR_LEN);
 mgmt->frame_control = cpu_to_le16(IEEE80211_FTYPE_MGMT | stype);
 memcpy(mgmt->da, dst, ETH_ALEN);
 memcpy(mgmt->sa, dev->dev_addr, ETH_ALEN);
 memcpy(mgmt->bssid, dst, ETH_ALEN);
 if (body)
  memcpy(skb_put(skb, bodylen), body, bodylen);

 meta = (struct hostap_skb_tx_data *) skb->cb;
 memset(meta, 0, sizeof(*meta));
 meta->magic = HOSTAP_SKB_TX_DATA_MAGIC;
 meta->iface = netdev_priv(dev);

 skb->dev = dev;
 skb_reset_mac_header(skb);
 skb_reset_network_header(skb);
 dev_queue_xmit(skb);

 return 0;
}
