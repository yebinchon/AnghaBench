
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int read_ptr; } ;
struct il_tx_queue {TYPE_1__ q; struct sk_buff** skbs; int * meta; scalar_t__ tfds; } ;
struct il_tfd {int dummy; } ;
struct il_priv {struct pci_dev* pci_dev; } ;


 int IL_ERR (char*,int) ;
 int IL_NUM_OF_TBS ;
 int PCI_DMA_BIDIRECTIONAL ;
 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_addr (int *,int ) ;
 int dma_unmap_len (int *,int ) ;
 int il4965_tfd_get_num_tbs (struct il_tfd*) ;
 int il4965_tfd_tb_get_addr (struct il_tfd*,int) ;
 int il4965_tfd_tb_get_len (struct il_tfd*,int) ;
 int len ;
 int mapping ;
 int pci_unmap_single (struct pci_dev*,int ,int ,int ) ;

void
il4965_hw_txq_free_tfd(struct il_priv *il, struct il_tx_queue *txq)
{
 struct il_tfd *tfd_tmp = (struct il_tfd *)txq->tfds;
 struct il_tfd *tfd;
 struct pci_dev *dev = il->pci_dev;
 int idx = txq->q.read_ptr;
 int i;
 int num_tbs;

 tfd = &tfd_tmp[idx];


 num_tbs = il4965_tfd_get_num_tbs(tfd);

 if (num_tbs >= IL_NUM_OF_TBS) {
  IL_ERR("Too many chunks: %i\n", num_tbs);

  return;
 }


 if (num_tbs)
  pci_unmap_single(dev, dma_unmap_addr(&txq->meta[idx], mapping),
     dma_unmap_len(&txq->meta[idx], len),
     PCI_DMA_BIDIRECTIONAL);


 for (i = 1; i < num_tbs; i++)
  pci_unmap_single(dev, il4965_tfd_tb_get_addr(tfd, i),
     il4965_tfd_tb_get_len(tfd, i),
     PCI_DMA_TODEVICE);


 if (txq->skbs) {
  struct sk_buff *skb = txq->skbs[txq->q.read_ptr];


  if (skb) {
   dev_kfree_skb_any(skb);
   txq->skbs[txq->q.read_ptr] = ((void*)0);
  }
 }
}
