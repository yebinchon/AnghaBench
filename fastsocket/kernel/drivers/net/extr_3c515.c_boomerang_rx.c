
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int data; struct net_device* dev; int protocol; int head; } ;
struct TYPE_3__ {short rx_bytes; int rx_packets; int rx_length_errors; int rx_crc_errors; int rx_frame_errors; int rx_over_errors; int rx_errors; } ;
struct net_device {int base_addr; TYPE_1__ stats; int name; } ;
struct corkscrew_private {int cur_rx; scalar_t__ dirty_rx; TYPE_2__* rx_ring; struct sk_buff** rx_skbuff; } ;
struct TYPE_4__ {int status; int addr; } ;


 scalar_t__ EL3_STATUS ;
 short PKT_BUF_SZ ;
 int RX_RING_SIZE ;
 int RxDComplete ;
 int RxDError ;
 scalar_t__ RxStatus ;
 int corkscrew_debug ;
 struct sk_buff* dev_alloc_skb (short) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int inw (scalar_t__) ;
 void* isa_bus_to_virt (int ) ;
 int isa_virt_to_bus (int ) ;
 int memcpy (void*,void*,short) ;
 struct corkscrew_private* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int pr_debug (char*,short,...) ;
 int pr_warning (char*,int ,void*,int ,void*) ;
 int rx_copy ;
 short rx_copybreak ;
 int rx_nocopy ;
 void* skb_put (struct sk_buff*,short) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static int boomerang_rx(struct net_device *dev)
{
 struct corkscrew_private *vp = netdev_priv(dev);
 int entry = vp->cur_rx % RX_RING_SIZE;
 int ioaddr = dev->base_addr;
 int rx_status;

 if (corkscrew_debug > 5)
  pr_debug("   In boomerang_rx(), status %4.4x, rx_status %4.4x.\n",
   inw(ioaddr + EL3_STATUS), inw(ioaddr + RxStatus));
 while ((rx_status = vp->rx_ring[entry].status) & RxDComplete) {
  if (rx_status & RxDError) {
   unsigned char rx_error = rx_status >> 16;
   if (corkscrew_debug > 2)
    pr_debug(" Rx error: status %2.2x.\n",
           rx_error);
   dev->stats.rx_errors++;
   if (rx_error & 0x01)
    dev->stats.rx_over_errors++;
   if (rx_error & 0x02)
    dev->stats.rx_length_errors++;
   if (rx_error & 0x04)
    dev->stats.rx_frame_errors++;
   if (rx_error & 0x08)
    dev->stats.rx_crc_errors++;
   if (rx_error & 0x10)
    dev->stats.rx_length_errors++;
  } else {

   short pkt_len = rx_status & 0x1fff;
   struct sk_buff *skb;

   dev->stats.rx_bytes += pkt_len;
   if (corkscrew_debug > 4)
    pr_debug("Receiving packet size %d status %4.4x.\n",
         pkt_len, rx_status);



   if (pkt_len < rx_copybreak
       && (skb = dev_alloc_skb(pkt_len + 4)) != ((void*)0)) {
    skb_reserve(skb, 2);

    memcpy(skb_put(skb, pkt_len),
           isa_bus_to_virt(vp->rx_ring[entry].
         addr), pkt_len);
    rx_copy++;
   } else {
    void *temp;

    skb = vp->rx_skbuff[entry];
    vp->rx_skbuff[entry] = ((void*)0);
    temp = skb_put(skb, pkt_len);

    if (isa_bus_to_virt(vp->rx_ring[entry].addr) != temp)
     pr_warning("%s: Warning -- the skbuff addresses do not match"
          " in boomerang_rx: %p vs. %p / %p.\n",
          dev->name,
          isa_bus_to_virt(vp->
        rx_ring[entry].
        addr), skb->head,
          temp);
    rx_nocopy++;
   }
   skb->protocol = eth_type_trans(skb, dev);
   netif_rx(skb);
   dev->stats.rx_packets++;
  }
  entry = (++vp->cur_rx) % RX_RING_SIZE;
 }

 for (; vp->cur_rx - vp->dirty_rx > 0; vp->dirty_rx++) {
  struct sk_buff *skb;
  entry = vp->dirty_rx % RX_RING_SIZE;
  if (vp->rx_skbuff[entry] == ((void*)0)) {
   skb = dev_alloc_skb(PKT_BUF_SZ);
   if (skb == ((void*)0))
    break;
   skb->dev = dev;
   skb_reserve(skb, 2);
   vp->rx_ring[entry].addr = isa_virt_to_bus(skb->data);
   vp->rx_skbuff[entry] = skb;
  }
  vp->rx_ring[entry].status = 0;
 }
 return 0;
}
