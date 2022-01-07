
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u8 ;
typedef int u16 ;
struct sk_buff {struct net_device* dev; scalar_t__ cb; } ;
struct net_device {int flags; char* dev_addr; int name; } ;
struct ieee80211_hdr {int tx_cb_idx; struct hostap_interface* iface; int magic; int frame_control; struct ieee80211_hdr* addr3; struct ieee80211_hdr* addr2; struct ieee80211_hdr* addr1; } ;
struct hostap_skb_tx_data {int tx_cb_idx; struct hostap_interface* iface; int magic; int frame_control; struct hostap_skb_tx_data* addr3; struct hostap_skb_tx_data* addr2; struct hostap_skb_tx_data* addr1; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {struct net_device* dev; } ;
typedef TYPE_1__ local_info_t ;


 int DEBUG_AP ;
 int ETH_ALEN ;
 int HOSTAP_SKB_TX_DATA_MAGIC ;
 int IEEE80211_FCTL_FROMDS ;
 int IFF_UP ;
 int PDEBUG (int ,char*,int ) ;
 int cpu_to_le16 (int ) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int hostap_80211_get_hdrlen (int ) ;
 scalar_t__ ieee80211_is_ctl (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 int memcpy (struct ieee80211_hdr*,char*,int) ;
 int memset (struct ieee80211_hdr*,int ,int) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 struct ieee80211_hdr* skb_put (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;

__attribute__((used)) static void prism2_send_mgmt(struct net_device *dev,
        u16 type_subtype, char *body,
        int body_len, u8 *addr, u16 tx_cb_idx)
{
 struct hostap_interface *iface;
 local_info_t *local;
 struct ieee80211_hdr *hdr;
 u16 fc;
 struct sk_buff *skb;
 struct hostap_skb_tx_data *meta;
 int hdrlen;

 iface = netdev_priv(dev);
 local = iface->local;
 dev = local->dev;
 iface = netdev_priv(dev);

 if (!(dev->flags & IFF_UP)) {
  PDEBUG(DEBUG_AP, "%s: prism2_send_mgmt - device is not UP - "
         "cannot send frame\n", dev->name);
  return;
 }

 skb = dev_alloc_skb(sizeof(*hdr) + body_len);
 if (skb == ((void*)0)) {
  PDEBUG(DEBUG_AP, "%s: prism2_send_mgmt failed to allocate "
         "skb\n", dev->name);
  return;
 }

 fc = type_subtype;
 hdrlen = hostap_80211_get_hdrlen(cpu_to_le16(type_subtype));
 hdr = (struct ieee80211_hdr *) skb_put(skb, hdrlen);
 if (body)
  memcpy(skb_put(skb, body_len), body, body_len);

 memset(hdr, 0, hdrlen);





 memcpy(hdr->addr1, addr, ETH_ALEN);
 if (ieee80211_is_data(hdr->frame_control)) {
  fc |= IEEE80211_FCTL_FROMDS;
  memcpy(hdr->addr2, dev->dev_addr, ETH_ALEN);
  memcpy(hdr->addr3, dev->dev_addr, ETH_ALEN);
 } else if (ieee80211_is_ctl(hdr->frame_control)) {

  memset(hdr->addr2, 0, ETH_ALEN);
  memset(hdr->addr3, 0, ETH_ALEN);
 } else {
  memcpy(hdr->addr2, dev->dev_addr, ETH_ALEN);
  memcpy(hdr->addr3, dev->dev_addr, ETH_ALEN);
 }

 hdr->frame_control = cpu_to_le16(fc);

 meta = (struct hostap_skb_tx_data *) skb->cb;
 memset(meta, 0, sizeof(*meta));
 meta->magic = HOSTAP_SKB_TX_DATA_MAGIC;
 meta->iface = iface;
 meta->tx_cb_idx = tx_cb_idx;

 skb->dev = dev;
 skb_reset_mac_header(skb);
 skb_reset_network_header(skb);
 dev_queue_xmit(skb);
}
