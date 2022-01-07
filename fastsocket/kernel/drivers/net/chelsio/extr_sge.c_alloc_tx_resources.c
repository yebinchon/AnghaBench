
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sge_params {int* cmdQ_size; } ;
struct sge {TYPE_2__* adapter; struct cmdQ* cmdQ; } ;
struct pci_dev {int dummy; } ;
struct cmdQ_e {int dummy; } ;
struct cmdQ_ce {int dummy; } ;
struct cmdQ {int genbit; int sop; int size; int stop_thres; int centries; int entries; int dma_addr; int lock; scalar_t__ cleaned; scalar_t__ processed; scalar_t__ status; scalar_t__ in_use; } ;
struct TYPE_3__ {int nports; } ;
struct TYPE_4__ {TYPE_1__ params; struct pci_dev* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_SKB_FRAGS ;
 unsigned int SGE_CMDQ_N ;
 int free_tx_resources (struct sge*) ;
 int kzalloc (unsigned int,int ) ;
 int pci_alloc_consistent (struct pci_dev*,unsigned int,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int alloc_tx_resources(struct sge *sge, struct sge_params *p)
{
 struct pci_dev *pdev = sge->adapter->pdev;
 unsigned int size, i;

 for (i = 0; i < SGE_CMDQ_N; i++) {
  struct cmdQ *q = &sge->cmdQ[i];

  q->genbit = 1;
  q->sop = 1;
  q->size = p->cmdQ_size[i];
  q->in_use = 0;
  q->status = 0;
  q->processed = q->cleaned = 0;
  q->stop_thres = 0;
  spin_lock_init(&q->lock);
  size = sizeof(struct cmdQ_e) * q->size;
  q->entries = pci_alloc_consistent(pdev, size, &q->dma_addr);
  if (!q->entries)
   goto err_no_mem;

  size = sizeof(struct cmdQ_ce) * q->size;
  q->centries = kzalloc(size, GFP_KERNEL);
  if (!q->centries)
   goto err_no_mem;
 }
 sge->cmdQ[0].stop_thres = sge->adapter->params.nports *
  (MAX_SKB_FRAGS + 1);
 return 0;

err_no_mem:
 free_tx_resources(sge);
 return -ENOMEM;
}
