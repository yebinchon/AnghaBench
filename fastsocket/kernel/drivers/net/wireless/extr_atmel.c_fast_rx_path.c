
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned char u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int ip_summed; int protocol; } ;
struct ieee80211_hdr {int addr2; int addr3; int frame_control; int addr1; } ;
struct atmel_private {TYPE_2__* dev; scalar_t__ do_rx_crc; } ;
struct TYPE_4__ {int rx_packets; int rx_bytes; int rx_crc_errors; int rx_dropped; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int CHECKSUM_NONE ;
 int IEEE80211_FCTL_FROMDS ;
 int atmel_copy_to_host (TYPE_2__*,void*,int,int) ;
 int crc32_le (int,unsigned char*,int) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,TYPE_2__*) ;
 int le16_to_cpu (int ) ;
 int memcpy (unsigned char*,int ,int) ;
 int netif_rx (struct sk_buff*) ;
 unsigned char* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static void fast_rx_path(struct atmel_private *priv,
    struct ieee80211_hdr *header,
    u16 msdu_size, u16 rx_packet_loc, u32 crc)
{

 u8 mac4[6];
 struct sk_buff *skb;
 unsigned char *skbp;


 atmel_copy_to_host(priv->dev, mac4, rx_packet_loc + 24, 6);
 msdu_size -= 6;

 if (priv->do_rx_crc) {
  crc = crc32_le(crc, mac4, 6);
  msdu_size -= 4;
 }

 if (!(skb = dev_alloc_skb(msdu_size + 14))) {
  priv->dev->stats.rx_dropped++;
  return;
 }

 skb_reserve(skb, 2);
 skbp = skb_put(skb, msdu_size + 12);
 atmel_copy_to_host(priv->dev, skbp + 12, rx_packet_loc + 30, msdu_size);

 if (priv->do_rx_crc) {
  u32 netcrc;
  crc = crc32_le(crc, skbp + 12, msdu_size);
  atmel_copy_to_host(priv->dev, (void *)&netcrc, rx_packet_loc + 30 + msdu_size, 4);
  if ((crc ^ 0xffffffff) != netcrc) {
   priv->dev->stats.rx_crc_errors++;
   dev_kfree_skb(skb);
   return;
  }
 }

 memcpy(skbp, header->addr1, 6);
 if (le16_to_cpu(header->frame_control) & IEEE80211_FCTL_FROMDS)
  memcpy(&skbp[6], header->addr3, 6);
 else
  memcpy(&skbp[6], header->addr2, 6);

 skb->protocol = eth_type_trans(skb, priv->dev);
 skb->ip_summed = CHECKSUM_NONE;
 netif_rx(skb);
 priv->dev->stats.rx_bytes += 12 + msdu_size;
 priv->dev->stats.rx_packets++;
}
