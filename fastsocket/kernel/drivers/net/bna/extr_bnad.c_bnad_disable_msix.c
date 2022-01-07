
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnad {int cfg_flags; int * msix_table; int pcidev; int bna_lock; } ;


 int BNAD_CF_MSIX ;
 int kfree (int *) ;
 int pci_disable_msix (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
bnad_disable_msix(struct bnad *bnad)
{
 u32 cfg_flags;
 unsigned long flags;

 spin_lock_irqsave(&bnad->bna_lock, flags);
 cfg_flags = bnad->cfg_flags;
 if (bnad->cfg_flags & BNAD_CF_MSIX)
  bnad->cfg_flags &= ~BNAD_CF_MSIX;
 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 if (cfg_flags & BNAD_CF_MSIX) {
  pci_disable_msix(bnad->pcidev);
  kfree(bnad->msix_table);
  bnad->msix_table = ((void*)0);
 }
}
