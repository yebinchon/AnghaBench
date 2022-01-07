
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int* dev_addr; int name; } ;
struct au1000_private {int tx_head; int tx_tail; int rx_head; int lock; TYPE_4__* mac; TYPE_3__* phy_dev; TYPE_2__** rx_dma_ring; TYPE_1__** tx_dma_ring; } ;
struct TYPE_8__ {int control; int mac_addr_high; int mac_addr_low; int vlan1_tag; } ;
struct TYPE_7__ {scalar_t__ duplex; scalar_t__ link; } ;
struct TYPE_6__ {int buff_stat; } ;
struct TYPE_5__ {int buff_stat; } ;


 scalar_t__ DUPLEX_FULL ;
 int MAC_BIG_ENDIAN ;
 int MAC_DISABLE_RX_OWN ;
 int MAC_FULL_DUPLEX ;
 int MAC_RX_ENABLE ;
 int MAC_TX_ENABLE ;
 int NUM_RX_DMA ;
 int RX_DMA_ENABLE ;
 int au1000_debug ;
 int au_sync () ;
 int enable_mac (struct net_device*,int) ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int au1000_init(struct net_device *dev)
{
 struct au1000_private *aup = netdev_priv(dev);
 unsigned long flags;
 int i;
 u32 control;

 if (au1000_debug > 4)
  printk("%s: au1000_init\n", dev->name);


 enable_mac(dev, 1);

 spin_lock_irqsave(&aup->lock, flags);

 aup->mac->control = 0;
 aup->tx_head = (aup->tx_dma_ring[0]->buff_stat & 0xC) >> 2;
 aup->tx_tail = aup->tx_head;
 aup->rx_head = (aup->rx_dma_ring[0]->buff_stat & 0xC) >> 2;

 aup->mac->mac_addr_high = dev->dev_addr[5]<<8 | dev->dev_addr[4];
 aup->mac->mac_addr_low = dev->dev_addr[3]<<24 | dev->dev_addr[2]<<16 |
  dev->dev_addr[1]<<8 | dev->dev_addr[0];

 for (i = 0; i < NUM_RX_DMA; i++) {
  aup->rx_dma_ring[i]->buff_stat |= RX_DMA_ENABLE;
 }
 au_sync();

 control = MAC_RX_ENABLE | MAC_TX_ENABLE;

 control |= MAC_BIG_ENDIAN;

 if (aup->phy_dev) {
  if (aup->phy_dev->link && (DUPLEX_FULL == aup->phy_dev->duplex))
   control |= MAC_FULL_DUPLEX;
  else
   control |= MAC_DISABLE_RX_OWN;
 } else {
  control |= MAC_FULL_DUPLEX;
 }

 aup->mac->control = control;
 aup->mac->vlan1_tag = 0x8100;
 au_sync();

 spin_unlock_irqrestore(&aup->lock, flags);
 return 0;
}
