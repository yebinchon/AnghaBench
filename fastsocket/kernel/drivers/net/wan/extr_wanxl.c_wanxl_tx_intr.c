
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct TYPE_8__ {int tx_bytes; int tx_packets; int tx_fifo_errors; int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_10__ {size_t tx_in; TYPE_2__* card; struct sk_buff** tx_skbs; struct net_device* dev; } ;
typedef TYPE_3__ port_t ;
struct TYPE_11__ {int stat; int address; } ;
typedef TYPE_4__ desc_t ;
struct TYPE_12__ {TYPE_4__* tx_descs; } ;
struct TYPE_9__ {int pdev; } ;





 int PCI_DMA_TODEVICE ;
 int TX_BUFFERS ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 TYPE_6__* get_status (TYPE_3__*) ;
 int netif_wake_queue (struct net_device*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static inline void wanxl_tx_intr(port_t *port)
{
 struct net_device *dev = port->dev;
 while (1) {
                desc_t *desc = &get_status(port)->tx_descs[port->tx_in];
  struct sk_buff *skb = port->tx_skbs[port->tx_in];

  switch (desc->stat) {
  case 129:
  case 130:
   netif_wake_queue(dev);
   return;

  case 128:
   dev->stats.tx_errors++;
   dev->stats.tx_fifo_errors++;
   break;

  default:
   dev->stats.tx_packets++;
   dev->stats.tx_bytes += skb->len;
  }
                desc->stat = 130;
  pci_unmap_single(port->card->pdev, desc->address, skb->len,
     PCI_DMA_TODEVICE);
  dev_kfree_skb_irq(skb);
                port->tx_in = (port->tx_in + 1) % TX_BUFFERS;
        }
}
