
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {int ioc; } ;
struct bfad_s {int hal_tmo; int comp; int bfad_lock; int bfa_fcs; TYPE_1__ bfa; } ;
typedef int pci_ers_result_t ;


 int KERN_INFO ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int bfa_fcs_stop (int *) ;
 int bfa_ioc_debug_save_ftrc (int *) ;
 int bfad_remove_intr (struct bfad_s*) ;
 int del_timer_sync (int *) ;
 int dev_printk (int ,int *,char*) ;
 int init_completion (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 struct bfad_s* pci_get_drvdata (struct pci_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static pci_ers_result_t
bfad_pci_mmio_enabled(struct pci_dev *pdev)
{
 unsigned long flags;
 struct bfad_s *bfad = pci_get_drvdata(pdev);

 dev_printk(KERN_INFO, &pdev->dev, "mmio_enabled\n");


 bfa_ioc_debug_save_ftrc(&bfad->bfa.ioc);


 spin_lock_irqsave(&bfad->bfad_lock, flags);
 init_completion(&bfad->comp);
 bfa_fcs_stop(&bfad->bfa_fcs);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 wait_for_completion(&bfad->comp);

 bfad_remove_intr(bfad);
 del_timer_sync(&bfad->hal_tmo);
 pci_disable_device(pdev);

 return PCI_ERS_RESULT_NEED_RESET;
}
