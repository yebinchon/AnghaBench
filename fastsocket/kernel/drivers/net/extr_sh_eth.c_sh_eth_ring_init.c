
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_eth_txdesc {int dummy; } ;
struct sh_eth_rxdesc {int dummy; } ;
struct sh_eth_private {int rx_buf_sz; int rx_desc_dma; void* rx_ring; void* tx_ring; int tx_desc_dma; scalar_t__ dirty_rx; void* tx_skbuff; void* rx_skbuff; } ;
struct net_device {int mtu; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PKT_BUF_SZ ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 int dev_err (int *,char*,...) ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,void*,int ) ;
 void* kmalloc (int,int ) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int sh_eth_ring_free (struct net_device*) ;

__attribute__((used)) static int sh_eth_ring_init(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 int rx_ringsize, tx_ringsize, ret = 0;







 mdp->rx_buf_sz = (ndev->mtu <= 1492 ? PKT_BUF_SZ :
     (((ndev->mtu + 26 + 7) & ~7) + 2 + 16));


 mdp->rx_skbuff = kmalloc(sizeof(*mdp->rx_skbuff) * RX_RING_SIZE,
    GFP_KERNEL);
 if (!mdp->rx_skbuff) {
  dev_err(&ndev->dev, "Cannot allocate Rx skb\n");
  ret = -ENOMEM;
  return ret;
 }

 mdp->tx_skbuff = kmalloc(sizeof(*mdp->tx_skbuff) * TX_RING_SIZE,
    GFP_KERNEL);
 if (!mdp->tx_skbuff) {
  dev_err(&ndev->dev, "Cannot allocate Tx skb\n");
  ret = -ENOMEM;
  goto skb_ring_free;
 }


 rx_ringsize = sizeof(struct sh_eth_rxdesc) * RX_RING_SIZE;
 mdp->rx_ring = dma_alloc_coherent(((void*)0), rx_ringsize, &mdp->rx_desc_dma,
   GFP_KERNEL);

 if (!mdp->rx_ring) {
  dev_err(&ndev->dev, "Cannot allocate Rx Ring (size %d bytes)\n",
   rx_ringsize);
  ret = -ENOMEM;
  goto desc_ring_free;
 }

 mdp->dirty_rx = 0;


 tx_ringsize = sizeof(struct sh_eth_txdesc) * TX_RING_SIZE;
 mdp->tx_ring = dma_alloc_coherent(((void*)0), tx_ringsize, &mdp->tx_desc_dma,
   GFP_KERNEL);
 if (!mdp->tx_ring) {
  dev_err(&ndev->dev, "Cannot allocate Tx Ring (size %d bytes)\n",
   tx_ringsize);
  ret = -ENOMEM;
  goto desc_ring_free;
 }
 return ret;

desc_ring_free:

 dma_free_coherent(((void*)0), rx_ringsize, mdp->rx_ring, mdp->rx_desc_dma);

skb_ring_free:

 sh_eth_ring_free(ndev);

 return ret;
}
