
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int protocol; struct net_device* dev; scalar_t__ data; } ;
struct TYPE_4__ {int rx_bytes; int rx_packets; int rx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {struct net_device* net_dev; } ;
struct i2400m {TYPE_1__ wimax_dev; } ;
struct device {int dummy; } ;


 int ETH_HLEN ;
 int ETH_P_IP ;
 int GFP_KERNEL ;
 struct sk_buff* __netdev_alloc_skb (struct net_device*,int,int ) ;
 int cpu_to_be16 (int ) ;
 int d_dump (int,struct device*,void const*,int) ;
 int d_fnend (int,struct device*,char*,struct i2400m*,void const*,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*,void const*,int) ;
 int d_printf (int,struct device*,char*,...) ;
 int dev_err (struct device*,char*) ;
 int htons (int ) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_rx_fake_eth_header (struct net_device*,scalar_t__,int ) ;
 int memcpy (int ,void const*,int) ;
 int netif_rx_ni (struct sk_buff*) ;
 scalar_t__ skb_end_pointer (struct sk_buff*) ;
 struct sk_buff* skb_get (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_set_mac_header (struct sk_buff*,int ) ;
 int skb_trim (struct sk_buff*,int) ;

void i2400m_net_rx(struct i2400m *i2400m, struct sk_buff *skb_rx,
     unsigned i, const void *buf, int buf_len)
{
 struct net_device *net_dev = i2400m->wimax_dev.net_dev;
 struct device *dev = i2400m_dev(i2400m);
 struct sk_buff *skb;

 d_fnstart(2, dev, "(i2400m %p buf %p buf_len %d)\n",
    i2400m, buf, buf_len);
 if (i) {
  skb = skb_get(skb_rx);
  d_printf(2, dev, "RX: reusing first payload skb %p\n", skb);
  skb_pull(skb, buf - (void *) skb->data);
  skb_trim(skb, (void *) skb_end_pointer(skb) - buf);
 } else {


  skb = __netdev_alloc_skb(net_dev, buf_len, GFP_KERNEL);
  if (skb == ((void*)0)) {
   dev_err(dev, "NETRX: no memory to realloc skb\n");
   net_dev->stats.rx_dropped++;
   goto error_skb_realloc;
  }
  memcpy(skb_put(skb, buf_len), buf, buf_len);
 }
 i2400m_rx_fake_eth_header(i2400m->wimax_dev.net_dev,
      skb->data - ETH_HLEN,
      cpu_to_be16(ETH_P_IP));
 skb_set_mac_header(skb, -ETH_HLEN);
 skb->dev = i2400m->wimax_dev.net_dev;
 skb->protocol = htons(ETH_P_IP);
 net_dev->stats.rx_packets++;
 net_dev->stats.rx_bytes += buf_len;
 d_printf(3, dev, "NETRX: receiving %d bytes to network stack\n",
  buf_len);
 d_dump(4, dev, buf, buf_len);
 netif_rx_ni(skb);
error_skb_realloc:
 d_fnend(2, dev, "(i2400m %p buf %p buf_len %d) = void\n",
  i2400m, buf, buf_len);
}
