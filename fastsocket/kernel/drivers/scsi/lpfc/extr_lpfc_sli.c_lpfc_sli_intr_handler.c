
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_hba {int ha_copy; int hba_flag; int cfg_multi_ring_support; int hbalock; int HAregaddr; int HCregaddr; } ;
typedef scalar_t__ irqreturn_t ;


 int DEFER_ERATT ;
 int HA_ERATT ;
 int HA_LATT ;
 int HA_MBATT ;
 int HA_RXMASK ;
 int HBA_ERATT_HANDLED ;
 int HC_ERINT_ENA ;
 int HC_LAINT_ENA ;
 int HC_MBINT_ENA ;
 int HC_R0INT_ENA ;
 int HC_R1INT_ENA ;
 int HC_R2INT_ENA ;
 scalar_t__ IRQ_HANDLED ;
 scalar_t__ IRQ_NONE ;
 int LPFC_ELS_RING ;
 int LPFC_EXTRA_RING ;
 int LPFC_FCP_RING ;
 scalar_t__ lpfc_intr_state_check (struct lpfc_hba*) ;
 scalar_t__ lpfc_readl (int ,int*) ;
 scalar_t__ lpfc_sli_fp_intr_handler (int,void*) ;
 scalar_t__ lpfc_sli_sp_intr_handler (int,void*) ;
 int readl (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int writel (int,int ) ;

irqreturn_t
lpfc_sli_intr_handler(int irq, void *dev_id)
{
 struct lpfc_hba *phba;
 irqreturn_t sp_irq_rc, fp_irq_rc;
 unsigned long status1, status2;
 uint32_t hc_copy;





 phba = (struct lpfc_hba *) dev_id;

 if (unlikely(!phba))
  return IRQ_NONE;


 if (lpfc_intr_state_check(phba))
  return IRQ_NONE;

 spin_lock(&phba->hbalock);
 if (lpfc_readl(phba->HAregaddr, &phba->ha_copy)) {
  spin_unlock(&phba->hbalock);
  return IRQ_HANDLED;
 }

 if (unlikely(!phba->ha_copy)) {
  spin_unlock(&phba->hbalock);
  return IRQ_NONE;
 } else if (phba->ha_copy & HA_ERATT) {
  if (phba->hba_flag & HBA_ERATT_HANDLED)

   phba->ha_copy &= ~HA_ERATT;
  else

   phba->hba_flag |= HBA_ERATT_HANDLED;
 }




 if (unlikely(phba->hba_flag & DEFER_ERATT)) {
  spin_unlock(&phba->hbalock);
  return IRQ_NONE;
 }


 if (lpfc_readl(phba->HCregaddr, &hc_copy)) {
  spin_unlock(&phba->hbalock);
  return IRQ_HANDLED;
 }
 writel(hc_copy & ~(HC_MBINT_ENA | HC_R0INT_ENA | HC_R1INT_ENA
  | HC_R2INT_ENA | HC_LAINT_ENA | HC_ERINT_ENA),
  phba->HCregaddr);
 writel((phba->ha_copy & ~(HA_LATT | HA_ERATT)), phba->HAregaddr);
 writel(hc_copy, phba->HCregaddr);
 readl(phba->HAregaddr);
 spin_unlock(&phba->hbalock);






 status1 = phba->ha_copy & (HA_MBATT | HA_LATT | HA_ERATT);


 status2 = (phba->ha_copy & (HA_RXMASK << (4*LPFC_ELS_RING)));
 status2 >>= (4*LPFC_ELS_RING);

 if (status1 || (status2 & HA_RXMASK))
  sp_irq_rc = lpfc_sli_sp_intr_handler(irq, dev_id);
 else
  sp_irq_rc = IRQ_NONE;






 status1 = (phba->ha_copy & (HA_RXMASK << (4*LPFC_FCP_RING)));
 status1 >>= (4*LPFC_FCP_RING);


 if (phba->cfg_multi_ring_support == 2) {
  status2 = (phba->ha_copy & (HA_RXMASK << (4*LPFC_EXTRA_RING)));
  status2 >>= (4*LPFC_EXTRA_RING);
 } else
  status2 = 0;

 if ((status1 & HA_RXMASK) || (status2 & HA_RXMASK))
  fp_irq_rc = lpfc_sli_fp_intr_handler(irq, dev_id);
 else
  fp_irq_rc = IRQ_NONE;


 return (sp_irq_rc == IRQ_HANDLED) ? sp_irq_rc : fp_irq_rc;
}
