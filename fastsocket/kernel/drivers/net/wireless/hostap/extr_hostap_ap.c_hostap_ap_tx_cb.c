
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int cb; int protocol; int pkt_type; scalar_t__ dev; scalar_t__ data; } ;
struct ieee80211_hdr {int frame_control; } ;
struct ap_data {TYPE_1__* local; } ;
struct TYPE_2__ {scalar_t__ apdev; int hostapd; } ;


 int BIT (int) ;
 int ETH_P_802_2 ;
 int IEEE80211_FCTL_VERS ;
 int PACKET_OTHERHOST ;
 int cpu_to_be16 (int ) ;
 int cpu_to_le16 (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int hostap_80211_get_hdrlen (int ) ;
 int memset (int ,int ,int) ;
 int netif_rx (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;

__attribute__((used)) static void hostap_ap_tx_cb(struct sk_buff *skb, int ok, void *data)
{
 struct ap_data *ap = data;
 struct ieee80211_hdr *hdr;

 if (!ap->local->hostapd || !ap->local->apdev) {
  dev_kfree_skb(skb);
  return;
 }




 hdr = (struct ieee80211_hdr *) skb->data;
 hdr->frame_control &= cpu_to_le16(~IEEE80211_FCTL_VERS);
 hdr->frame_control |= cpu_to_le16(ok ? BIT(1) : BIT(0));

 skb->dev = ap->local->apdev;
 skb_pull(skb, hostap_80211_get_hdrlen(hdr->frame_control));
 skb->pkt_type = PACKET_OTHERHOST;
 skb->protocol = cpu_to_be16(ETH_P_802_2);
 memset(skb->cb, 0, sizeof(skb->cb));
 netif_rx(skb);
}
