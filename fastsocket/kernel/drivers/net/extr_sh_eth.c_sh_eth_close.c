
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sh_eth_txdesc {int dummy; } ;
struct sh_eth_rxdesc {int dummy; } ;
struct sh_eth_private {int tx_desc_dma; int tx_ring; int rx_desc_dma; int rx_ring; int timer; scalar_t__ phydev; } ;
struct net_device {int irq; scalar_t__ base_addr; } ;


 scalar_t__ EDRRR ;
 scalar_t__ EDTRR ;
 scalar_t__ EESIPR ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 int ctrl_outl (int,scalar_t__) ;
 int del_timer_sync (int *) ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int free_irq (int ,struct net_device*) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_disconnect (scalar_t__) ;
 int phy_stop (scalar_t__) ;
 int sh_eth_ring_free (struct net_device*) ;

__attribute__((used)) static int sh_eth_close(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 u32 ioaddr = ndev->base_addr;
 int ringsize;

 netif_stop_queue(ndev);


 ctrl_outl(0x0000, ioaddr + EESIPR);


 ctrl_outl(0, ioaddr + EDTRR);
 ctrl_outl(0, ioaddr + EDRRR);


 if (mdp->phydev) {
  phy_stop(mdp->phydev);
  phy_disconnect(mdp->phydev);
 }

 free_irq(ndev->irq, ndev);

 del_timer_sync(&mdp->timer);


 sh_eth_ring_free(ndev);


 ringsize = sizeof(struct sh_eth_rxdesc) * RX_RING_SIZE;
 dma_free_coherent(((void*)0), ringsize, mdp->rx_ring, mdp->rx_desc_dma);


 ringsize = sizeof(struct sh_eth_txdesc) * TX_RING_SIZE;
 dma_free_coherent(((void*)0), ringsize, mdp->tx_ring, mdp->tx_desc_dma);

 return 0;
}
