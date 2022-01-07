
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct pci_dev {int dummy; } ;
struct dscc4_dev_priv {struct sk_buff** rx_skbuff; struct sk_buff** tx_skbuff; int rx_fd_dma; int tx_fd_dma; struct TxFD* rx_fd; struct TxFD* tx_fd; TYPE_1__* pci_priv; } ;
struct TxFD {int data; } ;
struct RxFD {int data; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 int HDLC_MAX_MRU ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int RX_MAX (int ) ;
 int RX_RING_SIZE ;
 int RX_TOTAL_SIZE ;
 int TX_RING_SIZE ;
 int TX_TOTAL_SIZE ;
 int dev_kfree_skb (struct sk_buff*) ;
 int le32_to_cpu (int ) ;
 int pci_free_consistent (struct pci_dev*,int ,struct TxFD*,int ) ;
 int pci_unmap_single (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void dscc4_release_ring(struct dscc4_dev_priv *dpriv)
{
 struct pci_dev *pdev = dpriv->pci_priv->pdev;
 struct TxFD *tx_fd = dpriv->tx_fd;
 struct RxFD *rx_fd = dpriv->rx_fd;
 struct sk_buff **skbuff;
 int i;

 pci_free_consistent(pdev, TX_TOTAL_SIZE, tx_fd, dpriv->tx_fd_dma);
 pci_free_consistent(pdev, RX_TOTAL_SIZE, rx_fd, dpriv->rx_fd_dma);

 skbuff = dpriv->tx_skbuff;
 for (i = 0; i < TX_RING_SIZE; i++) {
  if (*skbuff) {
   pci_unmap_single(pdev, le32_to_cpu(tx_fd->data),
    (*skbuff)->len, PCI_DMA_TODEVICE);
   dev_kfree_skb(*skbuff);
  }
  skbuff++;
  tx_fd++;
 }

 skbuff = dpriv->rx_skbuff;
 for (i = 0; i < RX_RING_SIZE; i++) {
  if (*skbuff) {
   pci_unmap_single(pdev, le32_to_cpu(rx_fd->data),
    RX_MAX(HDLC_MAX_MRU), PCI_DMA_FROMDEVICE);
   dev_kfree_skb(*skbuff);
  }
  skbuff++;
  rx_fd++;
 }
}
