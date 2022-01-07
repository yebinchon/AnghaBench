
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct bfad_s {int bfad_flags; int comp; int pci_name; int bfad_lock; int bfa; int hal_pcidev; int meminfo; int ioc_cfg; struct pci_dev* pcidev; } ;


 int BFAD_E_INTR_INIT_FAILED ;
 int BFAD_MSIX_ON ;
 int KERN_WARNING ;
 int bfa_attach (int *,struct bfad_s*,int *,int *,int *) ;
 int bfa_iocfc_init (int *) ;
 int bfa_sm_send_event (struct bfad_s*,int ) ;
 int bfad_drv_start (struct bfad_s*) ;
 int bfad_init_timer (struct bfad_s*) ;
 scalar_t__ bfad_install_msix_handler (struct bfad_s*) ;
 scalar_t__ bfad_setup_intr (struct bfad_s*) ;
 int dev_printk (int ,int *,char*,int ) ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

int
restart_bfa(struct bfad_s *bfad)
{
 unsigned long flags;
 struct pci_dev *pdev = bfad->pcidev;

 bfa_attach(&bfad->bfa, bfad, &bfad->ioc_cfg,
     &bfad->meminfo, &bfad->hal_pcidev);


 if (bfad_setup_intr(bfad)) {
  dev_printk(KERN_WARNING, &pdev->dev,
      "%s: bfad_setup_intr failed\n", bfad->pci_name);
  bfa_sm_send_event(bfad, BFAD_E_INTR_INIT_FAILED);
  return -1;
 }

 init_completion(&bfad->comp);
 spin_lock_irqsave(&bfad->bfad_lock, flags);
 bfa_iocfc_init(&bfad->bfa);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);


 if ((bfad->bfad_flags & BFAD_MSIX_ON) &&
     bfad_install_msix_handler(bfad))
  dev_printk(KERN_WARNING, &pdev->dev,
      "%s: install_msix failed.\n", bfad->pci_name);

 bfad_init_timer(bfad);
 wait_for_completion(&bfad->comp);
 bfad_drv_start(bfad);

 return 0;
}
