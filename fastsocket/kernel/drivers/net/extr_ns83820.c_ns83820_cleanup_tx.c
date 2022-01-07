
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ns83820 {int * tx_descs; int nr_tx_skbs; int pci_dev; struct sk_buff** tx_skbs; } ;
typedef int __le32 ;


 int CMDSTS_LEN_MASK ;
 int DESC_BUFPTR ;
 size_t DESC_CMDSTS ;
 unsigned int DESC_SIZE ;
 unsigned int NR_TX_DESC ;
 int PCI_DMA_TODEVICE ;
 int atomic_dec (int *) ;
 int desc_addr_get (int *) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int le32_to_cpu (int ) ;
 int memset (int *,int ,unsigned int) ;
 int pci_unmap_single (int ,int ,int,int ) ;

__attribute__((used)) static void ns83820_cleanup_tx(struct ns83820 *dev)
{
 unsigned i;

 for (i=0; i<NR_TX_DESC; i++) {
  struct sk_buff *skb = dev->tx_skbs[i];
  dev->tx_skbs[i] = ((void*)0);
  if (skb) {
   __le32 *desc = dev->tx_descs + (i * DESC_SIZE);
   pci_unmap_single(dev->pci_dev,
     desc_addr_get(desc + DESC_BUFPTR),
     le32_to_cpu(desc[DESC_CMDSTS]) & CMDSTS_LEN_MASK,
     PCI_DMA_TODEVICE);
   dev_kfree_skb_irq(skb);
   atomic_dec(&dev->nr_tx_skbs);
  }
 }

 memset(dev->tx_descs, 0, NR_TX_DESC * DESC_SIZE * 4);
}
