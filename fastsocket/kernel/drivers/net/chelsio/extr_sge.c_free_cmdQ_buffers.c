
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge {TYPE_1__* adapter; } ;
struct pci_dev {int dummy; } ;
struct cmdQ_ce {scalar_t__ skb; } ;
struct cmdQ {unsigned int cidx; unsigned int in_use; int sop; unsigned int size; struct cmdQ_ce* centries; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_any (scalar_t__) ;
 int dma_addr ;
 int dma_len ;
 scalar_t__ likely (int ) ;
 int pci_unmap_addr (struct cmdQ_ce*,int ) ;
 int pci_unmap_len (struct cmdQ_ce*,int ) ;
 int pci_unmap_single (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void free_cmdQ_buffers(struct sge *sge, struct cmdQ *q, unsigned int n)
{
 struct cmdQ_ce *ce;
 struct pci_dev *pdev = sge->adapter->pdev;
 unsigned int cidx = q->cidx;

 q->in_use -= n;
 ce = &q->centries[cidx];
 while (n--) {
  if (likely(pci_unmap_len(ce, dma_len))) {
   pci_unmap_single(pdev, pci_unmap_addr(ce, dma_addr),
      pci_unmap_len(ce, dma_len),
      PCI_DMA_TODEVICE);
   if (q->sop)
    q->sop = 0;
  }
  if (ce->skb) {
   dev_kfree_skb_any(ce->skb);
   q->sop = 1;
  }
  ce++;
  if (++cidx == q->size) {
   cidx = 0;
   ce = q->centries;
  }
 }
 q->cidx = cidx;
}
