
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_hba {scalar_t__ link_state; int hb_tmofunc; TYPE_1__* pport; int mbox_mem_pool; int hbalock; scalar_t__ hb_outstanding; } ;
struct TYPE_2__ {int fc_flag; int load_flag; } ;
typedef int LPFC_MBOXQ_t ;


 int FC_OFFLINE_MODE ;
 int FC_UNLOADING ;
 scalar_t__ LPFC_HBA_ERROR ;
 int LPFC_HB_MBOX_INTERVAL ;
 scalar_t__ jiffies ;
 int mempool_free (int *,int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
lpfc_hb_mbox_cmpl(struct lpfc_hba * phba, LPFC_MBOXQ_t * pmboxq)
{
 unsigned long drvr_flag;

 spin_lock_irqsave(&phba->hbalock, drvr_flag);
 phba->hb_outstanding = 0;
 spin_unlock_irqrestore(&phba->hbalock, drvr_flag);


 mempool_free(pmboxq, phba->mbox_mem_pool);
 if (!(phba->pport->fc_flag & FC_OFFLINE_MODE) &&
  !(phba->link_state == LPFC_HBA_ERROR) &&
  !(phba->pport->load_flag & FC_UNLOADING))
  mod_timer(&phba->hb_tmofunc,
     jiffies +
     msecs_to_jiffies(1000 * LPFC_HB_MBOX_INTERVAL));
 return;
}
