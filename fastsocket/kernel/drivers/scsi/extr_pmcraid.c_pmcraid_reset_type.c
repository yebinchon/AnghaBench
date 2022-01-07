
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int host_ioa_interrupt_reg; int ioa_host_interrupt_reg; int ioa_host_interrupt_mask_reg; } ;
struct pmcraid_instance {int ioa_hard_reset; int ioa_unit_check; TYPE_1__ int_regs; } ;


 int DOORBELL_IOA_RESET_ALERT ;
 int INTRS_HRRQ_VALID ;
 int INTRS_IOA_UNIT_CHECK ;
 int PMCRAID_ERROR_INTERRUPTS ;
 int ioread32 (int ) ;
 int pmcraid_info (char*) ;

__attribute__((used)) static void pmcraid_reset_type(struct pmcraid_instance *pinstance)
{
 u32 mask;
 u32 intrs;
 u32 alerts;

 mask = ioread32(pinstance->int_regs.ioa_host_interrupt_mask_reg);
 intrs = ioread32(pinstance->int_regs.ioa_host_interrupt_reg);
 alerts = ioread32(pinstance->int_regs.host_ioa_interrupt_reg);

 if ((mask & INTRS_HRRQ_VALID) == 0 ||
     (alerts & DOORBELL_IOA_RESET_ALERT) ||
     (intrs & PMCRAID_ERROR_INTERRUPTS)) {
  pmcraid_info("IOA requires hard reset\n");
  pinstance->ioa_hard_reset = 1;
 }


 if (intrs & INTRS_IOA_UNIT_CHECK)
  pinstance->ioa_unit_check = 1;
}
