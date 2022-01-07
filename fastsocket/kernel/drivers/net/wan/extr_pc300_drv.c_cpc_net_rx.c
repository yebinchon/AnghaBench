
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int len; int protocol; int * data; struct net_device* dev; } ;
struct TYPE_5__ {int rx_bytes; int rx_packets; int rx_frame_errors; int rx_errors; int rx_crc_errors; int rx_fifo_errors; int rx_length_errors; } ;
struct net_device {int mtu; TYPE_1__ stats; int name; } ;
struct TYPE_6__ {scalar_t__ trace_on; scalar_t__ chan; } ;
typedef TYPE_2__ pc300dev_t ;
struct TYPE_7__ {int channel; scalar_t__ card; } ;
typedef TYPE_3__ pc300ch_t ;
typedef int pc300_t ;
struct TYPE_8__ {scalar_t__ priv; } ;


 int DST_ABT ;
 int DST_CRC ;
 int DST_OVR ;
 int DST_RBIT ;
 int DST_SHRT ;
 int cpc_trace (struct net_device*,struct sk_buff*,char) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 TYPE_4__* dev_to_hdlc (struct net_device*) ;
 int dma_buf_read (int *,int,struct sk_buff*) ;
 int dma_get_rx_frame_size (int *,int) ;
 int hdlc_type_trans (struct sk_buff*,struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int printk (char*,...) ;

__attribute__((used)) static void cpc_net_rx(struct net_device *dev)
{
 pc300dev_t *d = (pc300dev_t *) dev_to_hdlc(dev)->priv;
 pc300ch_t *chan = (pc300ch_t *) d->chan;
 pc300_t *card = (pc300_t *) chan->card;
 int ch = chan->channel;



 int rxb;
 struct sk_buff *skb;

 while (1) {
  if ((rxb = dma_get_rx_frame_size(card, ch)) == -1)
   return;

  if (!netif_carrier_ok(dev)) {

      printk("%s : DCD is OFF - drop %d rx bytes\n", dev->name, rxb);
   skb = ((void*)0);
  } else {
   if (rxb > (dev->mtu + 40)) {
    printk("%s : MTU exceeded %d\n", dev->name, rxb);
    skb = ((void*)0);
   } else {
    skb = dev_alloc_skb(rxb);
    if (skb == ((void*)0)) {
     printk("%s: Memory squeeze!!\n", dev->name);
     return;
    }
    skb->dev = dev;
   }
  }

  if (((rxb = dma_buf_read(card, ch, skb)) <= 0) || (skb == ((void*)0))) {



   if ((skb == ((void*)0)) && (rxb > 0)) {

    dev->stats.rx_errors++;
    dev->stats.rx_length_errors++;
    continue;
   }

   if (rxb < 0) {
    rxb = -rxb;
    if (rxb & DST_OVR) {
     dev->stats.rx_errors++;
     dev->stats.rx_fifo_errors++;
    }
    if (rxb & DST_CRC) {
     dev->stats.rx_errors++;
     dev->stats.rx_crc_errors++;
    }
    if (rxb & (DST_RBIT | DST_SHRT | DST_ABT)) {
     dev->stats.rx_errors++;
     dev->stats.rx_frame_errors++;
    }
   }
   if (skb) {
    dev_kfree_skb_irq(skb);
   }
   continue;
  }

  dev->stats.rx_bytes += rxb;







  if (d->trace_on) {
   cpc_trace(dev, skb, 'R');
  }
  dev->stats.rx_packets++;
  skb->protocol = hdlc_type_trans(skb, dev);
  netif_rx(skb);
 }
}
