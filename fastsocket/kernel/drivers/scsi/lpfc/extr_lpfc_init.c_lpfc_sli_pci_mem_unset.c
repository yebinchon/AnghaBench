
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_3__ {int phys; int virt; } ;
struct TYPE_4__ {int phys; int virt; } ;
struct lpfc_hba {int slim_memmap_p; int ctrl_regs_memmap_p; TYPE_1__ slim2p; TYPE_2__ hbqslimp; struct pci_dev* pcidev; } ;


 int SLI2_SLIM_SIZE ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int iounmap (int ) ;
 int lpfc_sli_hbq_size () ;

__attribute__((used)) static void
lpfc_sli_pci_mem_unset(struct lpfc_hba *phba)
{
 struct pci_dev *pdev;


 if (!phba->pcidev)
  return;
 else
  pdev = phba->pcidev;


 dma_free_coherent(&pdev->dev, lpfc_sli_hbq_size(),
     phba->hbqslimp.virt, phba->hbqslimp.phys);
 dma_free_coherent(&pdev->dev, SLI2_SLIM_SIZE,
     phba->slim2p.virt, phba->slim2p.phys);


 iounmap(phba->ctrl_regs_memmap_p);
 iounmap(phba->slim_memmap_p);

 return;
}
