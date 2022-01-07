
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {unsigned int len; int data; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {unsigned int tx_bytes; int tx_packets; } ;
struct cycx_x25_channel {TYPE_2__ ifstats; int lcn; int link; struct cycx_device* card; } ;
struct TYPE_3__ {unsigned int mtu; } ;
struct cycx_device {TYPE_1__ wandev; } ;


 scalar_t__ cycx_x25_send (struct cycx_device*,int ,int ,int,unsigned int,int ) ;
 struct cycx_x25_channel* netdev_priv (struct net_device*) ;
 int skb_pull (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int cycx_x25_chan_send(struct net_device *dev, struct sk_buff *skb)
{
 struct cycx_x25_channel *chan = netdev_priv(dev);
 struct cycx_device *card = chan->card;
 int bitm = 0;
 unsigned len = skb->len;

 if (skb->len > card->wandev.mtu) {
  len = card->wandev.mtu;
  bitm = 0x10;
 }

 if (cycx_x25_send(card, chan->link, chan->lcn, bitm, len, skb->data))
  return 1;

 if (bitm) {
  skb_pull(skb, len);
  return 1;
 }

 ++chan->ifstats.tx_packets;
 chan->ifstats.tx_bytes += len;

 return 0;
}
