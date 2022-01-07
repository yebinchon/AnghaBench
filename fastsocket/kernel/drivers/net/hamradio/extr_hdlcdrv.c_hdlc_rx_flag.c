
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct TYPE_4__ {int rx_packets; int rx_dropped; } ;
struct net_device {TYPE_2__ stats; int name; } ;
struct TYPE_3__ {int len; int buffer; } ;
struct hdlcdrv_state {TYPE_1__ hdlcrx; } ;


 int ax25_type_trans (struct sk_buff*,struct net_device*) ;
 int check_crc_ccitt (int ,int) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int memcpy (unsigned char*,int ,int) ;
 int netif_rx (struct sk_buff*) ;
 int printk (char*,int ) ;
 unsigned char* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void hdlc_rx_flag(struct net_device *dev, struct hdlcdrv_state *s)
{
 struct sk_buff *skb;
 int pkt_len;
 unsigned char *cp;

 if (s->hdlcrx.len < 4)
  return;
 if (!check_crc_ccitt(s->hdlcrx.buffer, s->hdlcrx.len))
  return;
 pkt_len = s->hdlcrx.len - 2 + 1;
 if (!(skb = dev_alloc_skb(pkt_len))) {
  printk("%s: memory squeeze, dropping packet\n", dev->name);
  dev->stats.rx_dropped++;
  return;
 }
 cp = skb_put(skb, pkt_len);
 *cp++ = 0;
 memcpy(cp, s->hdlcrx.buffer, pkt_len - 1);
 skb->protocol = ax25_type_trans(skb, dev);
 netif_rx(skb);
 dev->stats.rx_packets++;
}
