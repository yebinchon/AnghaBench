
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carm_request {int n_elem; int * sg; int rq; } ;
struct carm_host {int pdev; } ;


 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int VPRINTK (char*) ;
 scalar_t__ WRITE ;
 int carm_end_rq (struct carm_host*,struct carm_request*,int) ;
 int pci_unmap_sg (int ,int *,int ,int) ;
 scalar_t__ rq_data_dir (int ) ;

__attribute__((used)) static inline void carm_handle_rw(struct carm_host *host,
      struct carm_request *crq, int error)
{
 int pci_dir;

 VPRINTK("ENTER\n");

 if (rq_data_dir(crq->rq) == WRITE)
  pci_dir = PCI_DMA_TODEVICE;
 else
  pci_dir = PCI_DMA_FROMDEVICE;

 pci_unmap_sg(host->pdev, &crq->sg[0], crq->n_elem, pci_dir);

 carm_end_rq(host, crq, error);
}
