
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct solos_card {int nr_ports; int buffer_size; scalar_t__ config_regs; int tlet; TYPE_2__* dev; struct sk_buff** rx_skb; scalar_t__* atmdev; scalar_t__ using_dma; int cli_queue_lock; int * cli_queue; } ;
struct sk_buff {scalar_t__ data; int len; int truesize; } ;
struct pkt_hdr {int vpi; int vci; int type; int size; } ;
struct atm_vcc {TYPE_1__* stats; int (* push ) (struct atm_vcc*,struct sk_buff*) ;} ;
struct TYPE_7__ {int dma_addr; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int rx; } ;


 scalar_t__ FLAGS_ADDR ;
 int GFP_ATOMIC ;
 int PCI_DMA_FROMDEVICE ;



 scalar_t__ RX_BUF (struct solos_card*,int) ;
 scalar_t__ RX_DMA_ADDR (int) ;
 int RX_DMA_SIZE ;
 TYPE_4__* SKB_CB (struct sk_buff*) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int atm_charge (struct atm_vcc*,int ) ;
 scalar_t__ atmdebug ;
 int atomic_inc (int *) ;
 int dev_info (int *,char*,int,...) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dev_warn (int *,char*,...) ;
 struct atm_vcc* find_vcc (scalar_t__,int,int) ;
 int fpga_tx (struct solos_card*) ;
 int iowrite32 (int,scalar_t__) ;
 int le16_to_cpu (int ) ;
 int memcpy_fromio (struct pkt_hdr*,scalar_t__,int) ;
 scalar_t__ net_ratelimit () ;
 int pci_map_single (TYPE_2__*,scalar_t__,int,int ) ;
 int pci_unmap_single (TYPE_2__*,int,int,int ) ;
 int print_buffer (struct sk_buff*) ;
 int process_command (struct solos_card*,int,struct sk_buff*) ;
 int process_status (struct solos_card*,int,struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 struct pkt_hdr* skb_put (struct sk_buff*,int) ;
 int skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;
 int tasklet_schedule (int *) ;

void solos_bh(unsigned long card_arg)
{
 struct solos_card *card = (void *)card_arg;
 uint32_t card_flags;
 uint32_t rx_done = 0;
 int port;






 card_flags = fpga_tx(card);

 for (port = 0; port < card->nr_ports; port++) {
  if (card_flags & (0x10 << port)) {
   struct pkt_hdr _hdr, *header;
   struct sk_buff *skb;
   struct atm_vcc *vcc;
   int size;

   if (card->using_dma) {
    skb = card->rx_skb[port];
    card->rx_skb[port] = ((void*)0);

    pci_unmap_single(card->dev, SKB_CB(skb)->dma_addr,
       RX_DMA_SIZE, PCI_DMA_FROMDEVICE);

    header = (void *)skb->data;
    size = le16_to_cpu(header->size);
    skb_put(skb, size + sizeof(*header));
    skb_pull(skb, sizeof(*header));
   } else {
    header = &_hdr;

    rx_done |= 0x10 << port;

    memcpy_fromio(header, RX_BUF(card, port), sizeof(*header));

    size = le16_to_cpu(header->size);
    if (size > (card->buffer_size - sizeof(*header))){
     dev_warn(&card->dev->dev, "Invalid buffer size\n");
     continue;
    }

    skb = alloc_skb(size + 1, GFP_ATOMIC);
    if (!skb) {
     if (net_ratelimit())
      dev_warn(&card->dev->dev, "Failed to allocate sk_buff for RX\n");
     continue;
    }

    memcpy_fromio(skb_put(skb, size),
           RX_BUF(card, port) + sizeof(*header),
           size);
   }
   if (atmdebug) {
    dev_info(&card->dev->dev, "Received: device %d\n", port);
    dev_info(&card->dev->dev, "size: %d VPI: %d VCI: %d\n",
      size, le16_to_cpu(header->vpi),
      le16_to_cpu(header->vci));
    print_buffer(skb);
   }

   switch (le16_to_cpu(header->type)) {
   case 129:
    vcc = find_vcc(card->atmdev[port], le16_to_cpu(header->vpi),
            le16_to_cpu(header->vci));
    if (!vcc) {
     if (net_ratelimit())
      dev_warn(&card->dev->dev, "Received packet for unknown VCI.VPI %d.%d on port %d\n",
        le16_to_cpu(header->vci), le16_to_cpu(header->vpi),
        port);
     continue;
    }
    atm_charge(vcc, skb->truesize);
    vcc->push(vcc, skb);
    atomic_inc(&vcc->stats->rx);
    break;

   case 128:
    if (process_status(card, port, skb) &&
        net_ratelimit()) {
     dev_warn(&card->dev->dev, "Bad status packet of %d bytes on port %d:\n", skb->len, port);
     print_buffer(skb);
    }
    dev_kfree_skb_any(skb);
    break;

   case 130:
   default:
    if (process_command(card, port, skb))
     break;
    spin_lock(&card->cli_queue_lock);
    if (skb_queue_len(&card->cli_queue[port]) > 10) {
     if (net_ratelimit())
      dev_warn(&card->dev->dev, "Dropping console response on port %d\n",
        port);
     dev_kfree_skb_any(skb);
    } else
     skb_queue_tail(&card->cli_queue[port], skb);
    spin_unlock(&card->cli_queue_lock);
    break;
   }
  }

  if (card->using_dma && card->atmdev[port] &&
      !card->rx_skb[port]) {
   struct sk_buff *skb = alloc_skb(RX_DMA_SIZE, GFP_ATOMIC);
   if (skb) {
    SKB_CB(skb)->dma_addr =
     pci_map_single(card->dev, skb->data,
             RX_DMA_SIZE, PCI_DMA_FROMDEVICE);
    iowrite32(SKB_CB(skb)->dma_addr,
       card->config_regs + RX_DMA_ADDR(port));
    card->rx_skb[port] = skb;
   } else {
    if (net_ratelimit())
     dev_warn(&card->dev->dev, "Failed to allocate RX skb");


    tasklet_schedule(&card->tlet);
   }
  }
 }
 if (rx_done)
  iowrite32(rx_done, card->config_regs + FLAGS_ADDR);

 return;
}
