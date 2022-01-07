
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct msix_entry {int dummy; } ;
struct bnad {int cfg_flags; int msix_num; int bna_lock; TYPE_1__* msix_table; int pcidev; } ;
struct TYPE_4__ {int entry; } ;


 int BNAD_CF_MSIX ;
 int BNAD_MAILBOX_MSIX_VECTORS ;
 int BNAD_NUM_RXP ;
 int BNAD_NUM_TXQ ;
 int GFP_KERNEL ;
 int bnad_q_num_adjust (struct bnad*,int,int) ;
 int bnad_q_num_init (struct bnad*) ;
 TYPE_1__* kcalloc (int,int,int ) ;
 int kfree (TYPE_1__*) ;
 int pci_enable_msix (int ,TYPE_1__*,int) ;
 int pci_intx (int ,int ) ;
 int pr_warn (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
bnad_enable_msix(struct bnad *bnad)
{
 int i, ret;
 unsigned long flags;

 spin_lock_irqsave(&bnad->bna_lock, flags);
 if (!(bnad->cfg_flags & BNAD_CF_MSIX)) {
  spin_unlock_irqrestore(&bnad->bna_lock, flags);
  return;
 }
 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 if (bnad->msix_table)
  return;

 bnad->msix_table =
  kcalloc(bnad->msix_num, sizeof(struct msix_entry), GFP_KERNEL);

 if (!bnad->msix_table)
  goto intx_mode;

 for (i = 0; i < bnad->msix_num; i++)
  bnad->msix_table[i].entry = i;

 ret = pci_enable_msix(bnad->pcidev, bnad->msix_table, bnad->msix_num);
 if (ret > 0) {

  pr_warn("BNA: %d MSI-X vectors allocated < %d requested\n",
   ret, bnad->msix_num);

  spin_lock_irqsave(&bnad->bna_lock, flags);

  bnad_q_num_adjust(bnad, (ret - BNAD_MAILBOX_MSIX_VECTORS) / 2,
   (ret - BNAD_MAILBOX_MSIX_VECTORS) / 2);
  spin_unlock_irqrestore(&bnad->bna_lock, flags);

  bnad->msix_num = BNAD_NUM_TXQ + BNAD_NUM_RXP +
    BNAD_MAILBOX_MSIX_VECTORS;

  if (bnad->msix_num > ret)
   goto intx_mode;



  ret = pci_enable_msix(bnad->pcidev, bnad->msix_table,
          bnad->msix_num);
  if (ret)
   goto intx_mode;

 } else if (ret < 0)
  goto intx_mode;

 pci_intx(bnad->pcidev, 0);

 return;

intx_mode:
 pr_warn("BNA: MSI-X enable failed - operating in INTx mode\n");

 kfree(bnad->msix_table);
 bnad->msix_table = ((void*)0);
 bnad->msix_num = 0;
 spin_lock_irqsave(&bnad->bna_lock, flags);
 bnad->cfg_flags &= ~BNAD_CF_MSIX;
 bnad_q_num_init(bnad);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);
}
