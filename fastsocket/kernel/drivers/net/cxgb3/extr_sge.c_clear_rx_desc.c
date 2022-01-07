
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_fl {int buf_size; int alloc_size; scalar_t__ use_pages; } ;
struct TYPE_2__ {int * page; int mapping; int * p_cnt; } ;
struct rx_sw_desc {int * skb; TYPE_1__ pg_chunk; } ;
struct pci_dev {int dummy; } ;


 int PCI_DMA_FROMDEVICE ;
 int dma_addr ;
 int kfree_skb (int *) ;
 int pci_unmap_addr (struct rx_sw_desc*,int ) ;
 int pci_unmap_page (struct pci_dev*,int ,int ,int ) ;
 int pci_unmap_single (struct pci_dev*,int ,int ,int ) ;
 int put_page (int *) ;

__attribute__((used)) static void clear_rx_desc(struct pci_dev *pdev, const struct sge_fl *q,
     struct rx_sw_desc *d)
{
 if (q->use_pages && d->pg_chunk.page) {
  (*d->pg_chunk.p_cnt)--;
  if (!*d->pg_chunk.p_cnt)
   pci_unmap_page(pdev,
           d->pg_chunk.mapping,
           q->alloc_size, PCI_DMA_FROMDEVICE);

  put_page(d->pg_chunk.page);
  d->pg_chunk.page = ((void*)0);
 } else {
  pci_unmap_single(pdev, pci_unmap_addr(d, dma_addr),
     q->buf_size, PCI_DMA_FROMDEVICE);
  kfree_skb(d->skb);
  d->skb = ((void*)0);
 }
}
