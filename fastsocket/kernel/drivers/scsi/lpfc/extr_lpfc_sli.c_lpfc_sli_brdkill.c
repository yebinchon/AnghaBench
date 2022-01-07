
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_sli {int * mbox_active; int sli_flag; int mbox_tmo; } ;
struct lpfc_hba {int link_state; int hbalock; int link_flag; TYPE_1__* pport; int HAregaddr; int mbox_mem_pool; int HCregaddr; struct lpfc_sli sli; } ;
struct TYPE_7__ {int mbox_cmpl; } ;
struct TYPE_6__ {int stopped; int port_state; } ;
typedef TYPE_2__ LPFC_MBOXQ_t ;


 int GFP_KERNEL ;
 int HA_ERATT ;
 int HC_ERINT_ENA ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_SLI ;
 int LPFC_HBA_ERROR ;
 int LPFC_SLI_ACTIVE ;
 int LPFC_SLI_MBOX_ACTIVE ;
 int LS_IGNORE_ERATT ;
 int MBX_BUSY ;
 int MBX_NOWAIT ;
 int MBX_SUCCESS ;
 int del_timer_sync (int *) ;
 int lpfc_hba_down_post (struct lpfc_hba*) ;
 int lpfc_kill_board (struct lpfc_hba*,TYPE_2__*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,...) ;
 scalar_t__ lpfc_readl (int ,int*) ;
 int lpfc_sli_def_mbox_cmpl ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_2__*,int ) ;
 int mdelay (int) ;
 scalar_t__ mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_2__*,int ) ;
 int readl (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int,int ) ;

int
lpfc_sli_brdkill(struct lpfc_hba *phba)
{
 struct lpfc_sli *psli;
 LPFC_MBOXQ_t *pmb;
 uint32_t status;
 uint32_t ha_copy;
 int retval;
 int i = 0;

 psli = &phba->sli;


 lpfc_printf_log(phba, KERN_INFO, LOG_SLI,
   "0329 Kill HBA Data: x%x x%x\n",
   phba->pport->port_state, psli->sli_flag);

 pmb = (LPFC_MBOXQ_t *) mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!pmb)
  return 1;


 spin_lock_irq(&phba->hbalock);
 if (lpfc_readl(phba->HCregaddr, &status)) {
  spin_unlock_irq(&phba->hbalock);
  mempool_free(pmb, phba->mbox_mem_pool);
  return 1;
 }
 status &= ~HC_ERINT_ENA;
 writel(status, phba->HCregaddr);
 readl(phba->HCregaddr);
 phba->link_flag |= LS_IGNORE_ERATT;
 spin_unlock_irq(&phba->hbalock);

 lpfc_kill_board(phba, pmb);
 pmb->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
 retval = lpfc_sli_issue_mbox(phba, pmb, MBX_NOWAIT);

 if (retval != MBX_SUCCESS) {
  if (retval != MBX_BUSY)
   mempool_free(pmb, phba->mbox_mem_pool);
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "2752 KILL_BOARD command failed retval %d\n",
    retval);
  spin_lock_irq(&phba->hbalock);
  phba->link_flag &= ~LS_IGNORE_ERATT;
  spin_unlock_irq(&phba->hbalock);
  return 1;
 }

 spin_lock_irq(&phba->hbalock);
 psli->sli_flag &= ~LPFC_SLI_ACTIVE;
 spin_unlock_irq(&phba->hbalock);

 mempool_free(pmb, phba->mbox_mem_pool);






 if (lpfc_readl(phba->HAregaddr, &ha_copy))
  return 1;
 while ((i++ < 30) && !(ha_copy & HA_ERATT)) {
  mdelay(100);
  if (lpfc_readl(phba->HAregaddr, &ha_copy))
   return 1;
 }

 del_timer_sync(&psli->mbox_tmo);
 if (ha_copy & HA_ERATT) {
  writel(HA_ERATT, phba->HAregaddr);
  phba->pport->stopped = 1;
 }
 spin_lock_irq(&phba->hbalock);
 psli->sli_flag &= ~LPFC_SLI_MBOX_ACTIVE;
 psli->mbox_active = ((void*)0);
 phba->link_flag &= ~LS_IGNORE_ERATT;
 spin_unlock_irq(&phba->hbalock);

 lpfc_hba_down_post(phba);
 phba->link_state = LPFC_HBA_ERROR;

 return ha_copy & HA_ERATT ? 0 : 1;
}
