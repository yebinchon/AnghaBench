
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fcp_eq_hdl; } ;
struct lpfc_hba {int cfg_fcp_io_channel; TYPE_1__ sli4_hba; } ;
typedef scalar_t__ irqreturn_t ;


 scalar_t__ IRQ_HANDLED ;
 scalar_t__ IRQ_NONE ;
 scalar_t__ lpfc_sli4_hba_intr_handler (int,int *) ;
 scalar_t__ unlikely (int) ;

irqreturn_t
lpfc_sli4_intr_handler(int irq, void *dev_id)
{
 struct lpfc_hba *phba;
 irqreturn_t hba_irq_rc;
 bool hba_handled = 0;
 int fcp_eqidx;


 phba = (struct lpfc_hba *)dev_id;

 if (unlikely(!phba))
  return IRQ_NONE;




 for (fcp_eqidx = 0; fcp_eqidx < phba->cfg_fcp_io_channel; fcp_eqidx++) {
  hba_irq_rc = lpfc_sli4_hba_intr_handler(irq,
     &phba->sli4_hba.fcp_eq_hdl[fcp_eqidx]);
  if (hba_irq_rc == IRQ_HANDLED)
   hba_handled |= 1;
 }

 return (hba_handled == 1) ? IRQ_HANDLED : IRQ_NONE;
}
