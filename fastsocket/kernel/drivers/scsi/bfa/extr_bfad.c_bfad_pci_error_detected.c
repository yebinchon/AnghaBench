
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {int ioc; } ;
struct bfad_s {int bfad_flags; int bfad_lock; int hal_tmo; int comp; int bfa_fcs; TYPE_1__ bfa; } ;
typedef int pci_ers_result_t ;
typedef int pci_channel_state_t ;


 int BFAD_EEH_BUSY ;
 int BFAD_EEH_PCI_CHANNEL_IO_PERM_FAILURE ;
 int KERN_ERR ;
 int PCI_ERS_RESULT_CAN_RECOVER ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int PCI_ERS_RESULT_NONE ;
 int WARN_ON (int) ;
 int bfa_fcs_stop (int *) ;
 int bfa_ioc_suspend (int *) ;
 int bfad_remove_intr (struct bfad_s*) ;
 int del_timer_sync (int *) ;
 int dev_printk (int ,int *,char*,int,int) ;
 int init_completion (int *) ;



 int pci_disable_device (struct pci_dev*) ;
 struct bfad_s* pci_get_drvdata (struct pci_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static pci_ers_result_t
bfad_pci_error_detected(struct pci_dev *pdev, pci_channel_state_t state)
{
 struct bfad_s *bfad = pci_get_drvdata(pdev);
 unsigned long flags;
 pci_ers_result_t ret = PCI_ERS_RESULT_NONE;

 dev_printk(KERN_ERR, &pdev->dev,
     "error detected state: %d - flags: 0x%x\n",
     state, bfad->bfad_flags);

 switch (state) {
 case 129:
  spin_lock_irqsave(&bfad->bfad_lock, flags);
  bfad->bfad_flags &= ~BFAD_EEH_BUSY;

  bfa_ioc_suspend(&bfad->bfa.ioc);
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  del_timer_sync(&bfad->hal_tmo);
  ret = PCI_ERS_RESULT_CAN_RECOVER;
  break;
 case 130:
  init_completion(&bfad->comp);
  spin_lock_irqsave(&bfad->bfad_lock, flags);
  bfad->bfad_flags |= BFAD_EEH_BUSY;

  bfa_ioc_suspend(&bfad->bfa.ioc);
  bfa_fcs_stop(&bfad->bfa_fcs);
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  wait_for_completion(&bfad->comp);

  bfad_remove_intr(bfad);
  del_timer_sync(&bfad->hal_tmo);
  pci_disable_device(pdev);
  ret = PCI_ERS_RESULT_NEED_RESET;
  break;
 case 128:
  spin_lock_irqsave(&bfad->bfad_lock, flags);
  bfad->bfad_flags |= BFAD_EEH_BUSY |
        BFAD_EEH_PCI_CHANNEL_IO_PERM_FAILURE;
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);







  ret = PCI_ERS_RESULT_DISCONNECT;
  break;
 default:
  WARN_ON(1);
 }

 return ret;
}
