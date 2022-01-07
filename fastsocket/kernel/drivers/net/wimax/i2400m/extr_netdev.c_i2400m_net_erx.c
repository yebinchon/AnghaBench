
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; int protocol; struct net_device* dev; } ;
struct TYPE_4__ {int rx_bytes; int rx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {struct net_device* net_dev; } ;
struct i2400m {TYPE_1__ wimax_dev; } ;
struct device {int dummy; } ;
typedef enum i2400m_cs { ____Placeholder_i2400m_cs } i2400m_cs ;


 scalar_t__ ETH_HLEN ;
 int ETH_P_IP ;


 int cpu_to_be16 (int) ;
 int d_dump (int,struct device*,scalar_t__,int ) ;
 int d_fnend (int,struct device*,char*,struct i2400m*,struct sk_buff*,int ,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*,struct sk_buff*,int ,int) ;
 int d_printf (int,struct device*,char*,int ) ;
 int dev_err (struct device*,char*,int) ;
 int htons (int) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_rx_fake_eth_header (struct net_device*,scalar_t__,int ) ;
 int netif_rx_ni (struct sk_buff*) ;
 int skb_set_mac_header (struct sk_buff*,scalar_t__) ;

void i2400m_net_erx(struct i2400m *i2400m, struct sk_buff *skb,
      enum i2400m_cs cs)
{
 struct net_device *net_dev = i2400m->wimax_dev.net_dev;
 struct device *dev = i2400m_dev(i2400m);
 int protocol;

 d_fnstart(2, dev, "(i2400m %p skb %p [%u] cs %d)\n",
    i2400m, skb, skb->len, cs);
 switch(cs) {
 case 128:
 case 129:
  protocol = ETH_P_IP;
  i2400m_rx_fake_eth_header(i2400m->wimax_dev.net_dev,
       skb->data - ETH_HLEN,
       cpu_to_be16(ETH_P_IP));
  skb_set_mac_header(skb, -ETH_HLEN);
  skb->dev = i2400m->wimax_dev.net_dev;
  skb->protocol = htons(ETH_P_IP);
  net_dev->stats.rx_packets++;
  net_dev->stats.rx_bytes += skb->len;
  break;
 default:
  dev_err(dev, "ERX: BUG? CS type %u unsupported\n", cs);
  goto error;

 }
 d_printf(3, dev, "ERX: receiving %d bytes to the network stack\n",
   skb->len);
 d_dump(4, dev, skb->data, skb->len);
 netif_rx_ni(skb);
error:
 d_fnend(2, dev, "(i2400m %p skb %p [%u] cs %d) = void\n",
  i2400m, skb, skb->len, cs);
}
