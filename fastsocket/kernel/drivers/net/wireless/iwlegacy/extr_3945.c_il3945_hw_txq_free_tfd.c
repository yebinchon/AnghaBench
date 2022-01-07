
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int read_ptr; } ;
struct il_tx_queue {TYPE_2__ q; struct sk_buff** skbs; int * meta; scalar_t__ tfds; } ;
struct il_priv {struct pci_dev* pci_dev; } ;
struct il3945_tfd {TYPE_1__* tbs; int control_flags; } ;
struct TYPE_3__ {int len; int addr; } ;


 int IL_ERR (char*,int) ;
 int NUM_TFD_CHUNKS ;
 int PCI_DMA_TODEVICE ;
 int TFD_CTL_COUNT_GET (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_addr (int *,int ) ;
 int dma_unmap_len (int *,int ) ;
 int le32_to_cpu (int ) ;
 int len ;
 int mapping ;
 int pci_unmap_single (struct pci_dev*,int ,int ,int ) ;

void
il3945_hw_txq_free_tfd(struct il_priv *il, struct il_tx_queue *txq)
{
 struct il3945_tfd *tfd_tmp = (struct il3945_tfd *)txq->tfds;
 int idx = txq->q.read_ptr;
 struct il3945_tfd *tfd = &tfd_tmp[idx];
 struct pci_dev *dev = il->pci_dev;
 int i;
 int counter;


 counter = TFD_CTL_COUNT_GET(le32_to_cpu(tfd->control_flags));
 if (counter > NUM_TFD_CHUNKS) {
  IL_ERR("Too many chunks: %i\n", counter);

  return;
 }


 if (counter)
  pci_unmap_single(dev, dma_unmap_addr(&txq->meta[idx], mapping),
     dma_unmap_len(&txq->meta[idx], len),
     PCI_DMA_TODEVICE);



 for (i = 1; i < counter; i++)
  pci_unmap_single(dev, le32_to_cpu(tfd->tbs[i].addr),
     le32_to_cpu(tfd->tbs[i].len),
     PCI_DMA_TODEVICE);


 if (txq->skbs) {
  struct sk_buff *skb = txq->skbs[txq->q.read_ptr];


  if (skb) {
   dev_kfree_skb_any(skb);
   txq->skbs[txq->q.read_ptr] = ((void*)0);
  }
 }
}
