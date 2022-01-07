
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int hbalock; } ;
typedef int LPFC_MBOXQ_t ;


 int __lpfc_mbox_cmpl_put (struct lpfc_hba*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
lpfc_mbox_cmpl_put(struct lpfc_hba *phba, LPFC_MBOXQ_t *mbq)
{
 unsigned long iflag;


 spin_lock_irqsave(&phba->hbalock, iflag);
 __lpfc_mbox_cmpl_put(phba, mbq);
 spin_unlock_irqrestore(&phba->hbalock, iflag);
 return;
}
