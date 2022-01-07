
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct lpfc_hba {struct pci_dev* pcidev; } ;
struct lpfc_dmabuf {int phys; scalar_t__ virt; } ;


 int BSG_MBOX_SIZE ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int kfree (struct lpfc_dmabuf*) ;

__attribute__((used)) static void
lpfc_bsg_dma_page_free(struct lpfc_hba *phba, struct lpfc_dmabuf *dmabuf)
{
 struct pci_dev *pcidev = phba->pcidev;

 if (!dmabuf)
  return;

 if (dmabuf->virt)
  dma_free_coherent(&pcidev->dev, BSG_MBOX_SIZE,
      dmabuf->virt, dmabuf->phys);
 kfree(dmabuf);
 return;
}
