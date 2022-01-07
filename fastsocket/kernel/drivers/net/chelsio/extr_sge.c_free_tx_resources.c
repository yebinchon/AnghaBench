
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge {struct cmdQ* cmdQ; TYPE_1__* adapter; } ;
struct pci_dev {int dummy; } ;
struct cmdQ_e {int dummy; } ;
struct cmdQ {int size; int dma_addr; scalar_t__ entries; scalar_t__ centries; scalar_t__ in_use; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 unsigned int SGE_CMDQ_N ;
 int free_cmdQ_buffers (struct sge*,struct cmdQ*,scalar_t__) ;
 int kfree (scalar_t__) ;
 int pci_free_consistent (struct pci_dev*,unsigned int,scalar_t__,int ) ;

__attribute__((used)) static void free_tx_resources(struct sge *sge)
{
 struct pci_dev *pdev = sge->adapter->pdev;
 unsigned int size, i;

 for (i = 0; i < SGE_CMDQ_N; i++) {
  struct cmdQ *q = &sge->cmdQ[i];

  if (q->centries) {
   if (q->in_use)
    free_cmdQ_buffers(sge, q, q->in_use);
   kfree(q->centries);
  }
  if (q->entries) {
   size = sizeof(struct cmdQ_e) * q->size;
   pci_free_consistent(pdev, size, q->entries,
         q->dma_addr);
  }
 }
}
