
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int * data; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct lt_sendlap {int length; int laptype; int dnode; int command; } ;
typedef int netdev_tx_t ;
typedef int cbuf ;


 int DEBUG_UPPER ;
 int LT_SENDLAP ;
 int NETDEV_TX_OK ;
 int debug ;
 int dev_kfree_skb (struct sk_buff*) ;
 int do_write (struct net_device*,struct lt_sendlap*,int,unsigned char*,int) ;
 int printk (char*,...) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 unsigned char* skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t ltpc_xmit(struct sk_buff *skb, struct net_device *dev)
{



 int i;
 struct lt_sendlap cbuf;
 unsigned char *hdr;

 cbuf.command = LT_SENDLAP;
 cbuf.dnode = skb->data[0];
 cbuf.laptype = skb->data[2];
 skb_pull(skb,3);
 cbuf.length = skb->len;
 skb_reset_transport_header(skb);

 if(debug & DEBUG_UPPER) {
  printk("command ");
  for(i=0;i<6;i++)
   printk("%02x ",((unsigned char *)&cbuf)[i]);
  printk("\n");
 }

 hdr = skb_transport_header(skb);
 do_write(dev, &cbuf, sizeof(cbuf), hdr, skb->len);

 if(debug & DEBUG_UPPER) {
  printk("sent %d ddp bytes\n",skb->len);
  for (i = 0; i < skb->len; i++)
   printk("%02x ", hdr[i]);
  printk("\n");
 }

 dev->stats.tx_packets++;
 dev->stats.tx_bytes += skb->len;

 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}
