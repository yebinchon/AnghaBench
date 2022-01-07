
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct bfad_s {int bfad_lock; int bfad_flags; } ;


 int BFAD_EEH_BUSY ;
 int KERN_WARNING ;
 int bfad_rport_online_wait (struct bfad_s*) ;
 int dev_printk (int ,int *,char*) ;
 struct bfad_s* pci_get_drvdata (struct pci_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
bfad_pci_resume(struct pci_dev *pdev)
{
 unsigned long flags;
 struct bfad_s *bfad = pci_get_drvdata(pdev);

 dev_printk(KERN_WARNING, &pdev->dev, "resume\n");


 bfad_rport_online_wait(bfad);

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 bfad->bfad_flags &= ~BFAD_EEH_BUSY;
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
}
