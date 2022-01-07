
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct be_dma_mem {int size; void* va; void* dma; } ;
struct be_ctrl_info {int mcc_cq_lock; int mcc_lock; int mbox_lock; struct pci_dev* pdev; struct be_dma_mem mbox_mem; struct be_dma_mem mbox_mem_alloced; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_mcc_mailbox {int dummy; } ;


 int ENOMEM ;
 void* PTR_ALIGN (void*,int) ;
 int beiscsi_map_pci_bars (struct beiscsi_hba*,struct pci_dev*) ;
 int beiscsi_unmap_pci_function (struct beiscsi_hba*) ;
 int memset (void*,int ,int) ;
 void* pci_alloc_consistent (struct pci_dev*,int,void**) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int be_ctrl_init(struct beiscsi_hba *phba, struct pci_dev *pdev)
{
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct be_dma_mem *mbox_mem_alloc = &ctrl->mbox_mem_alloced;
 struct be_dma_mem *mbox_mem_align = &ctrl->mbox_mem;
 int status = 0;

 ctrl->pdev = pdev;
 status = beiscsi_map_pci_bars(phba, pdev);
 if (status)
  return status;
 mbox_mem_alloc->size = sizeof(struct be_mcc_mailbox) + 16;
 mbox_mem_alloc->va = pci_alloc_consistent(pdev,
        mbox_mem_alloc->size,
        &mbox_mem_alloc->dma);
 if (!mbox_mem_alloc->va) {
  beiscsi_unmap_pci_function(phba);
  return -ENOMEM;
 }

 mbox_mem_align->size = sizeof(struct be_mcc_mailbox);
 mbox_mem_align->va = PTR_ALIGN(mbox_mem_alloc->va, 16);
 mbox_mem_align->dma = PTR_ALIGN(mbox_mem_alloc->dma, 16);
 memset(mbox_mem_align->va, 0, sizeof(struct be_mcc_mailbox));
 spin_lock_init(&ctrl->mbox_lock);
 spin_lock_init(&phba->ctrl.mcc_lock);
 spin_lock_init(&phba->ctrl.mcc_cq_lock);

 return status;
}
