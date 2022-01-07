
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct net_device {void* trans_start; } ;
struct dscc4_pci_priv {int pdev; } ;
struct dscc4_dev_priv {int tx_current; int tx_dirty; int lock; struct TxFD* tx_fd; struct sk_buff** tx_skbuff; struct dscc4_pci_priv* pci_priv; } ;
struct TxFD {int state; int complete; void* jiffies; int data; } ;
typedef int netdev_tx_t ;


 int FrameEnd ;
 int NETDEV_TX_OK ;
 int PCI_DMA_TODEVICE ;
 int TO_STATE_TX (int ) ;
 int TX_RING_SIZE ;
 int cpu_to_le32 (int ) ;
 int debug ;
 int dscc4_do_tx (struct dscc4_dev_priv*,struct net_device*) ;
 struct dscc4_dev_priv* dscc4_priv (struct net_device*) ;
 scalar_t__ dscc4_tx_poll (struct dscc4_dev_priv*,struct net_device*) ;
 int dscc4_tx_print (struct net_device*,struct dscc4_dev_priv*,char*) ;
 scalar_t__ dscc4_tx_quiescent (struct dscc4_dev_priv*,struct net_device*) ;
 void* jiffies ;
 int mb () ;
 int netif_stop_queue (struct net_device*) ;
 int pci_map_single (int ,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static netdev_tx_t dscc4_start_xmit(struct sk_buff *skb,
       struct net_device *dev)
{
 struct dscc4_dev_priv *dpriv = dscc4_priv(dev);
 struct dscc4_pci_priv *ppriv = dpriv->pci_priv;
 struct TxFD *tx_fd;
 int next;

 next = dpriv->tx_current%TX_RING_SIZE;
 dpriv->tx_skbuff[next] = skb;
 tx_fd = dpriv->tx_fd + next;
 tx_fd->state = FrameEnd | TO_STATE_TX(skb->len);
 tx_fd->data = cpu_to_le32(pci_map_single(ppriv->pdev, skb->data, skb->len,
         PCI_DMA_TODEVICE));
 tx_fd->complete = 0x00000000;
 tx_fd->jiffies = jiffies;
 mb();







 dev->trans_start = jiffies;

 if (debug > 2)
  dscc4_tx_print(dev, dpriv, "Xmit");

 if (!((++dpriv->tx_current - dpriv->tx_dirty)%TX_RING_SIZE))
  netif_stop_queue(dev);

 if (dscc4_tx_quiescent(dpriv, dev))
  dscc4_do_tx(dpriv, dev);

 return NETDEV_TX_OK;
}
