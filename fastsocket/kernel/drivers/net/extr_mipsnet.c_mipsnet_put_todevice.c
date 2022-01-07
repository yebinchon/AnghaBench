
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; char* data; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 int outb (char,int ) ;
 int outl (int,int ) ;
 int regaddr (struct net_device*,int ) ;
 int txDataBuffer ;
 int txDataCount ;

__attribute__((used)) static inline void mipsnet_put_todevice(struct net_device *dev,
 struct sk_buff *skb)
{
 int count_to_go = skb->len;
 char *buf_ptr = skb->data;

 outl(skb->len, regaddr(dev, txDataCount));

 for (; count_to_go; buf_ptr++, count_to_go--)
  outb(*buf_ptr, regaddr(dev, txDataBuffer));

 dev->stats.tx_packets++;
 dev->stats.tx_bytes += skb->len;

 dev_kfree_skb(skb);
}
