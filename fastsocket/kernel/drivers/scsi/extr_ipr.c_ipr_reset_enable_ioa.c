
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_7__ {int sense_interrupt_mask_reg; int clr_interrupt_mask_reg32; int clr_interrupt_mask_reg; int set_uproc_interrupt_reg32; int sense_interrupt_reg32; int endian_swap_reg; } ;
struct ipr_ioa_cfg {int hrrq_num; int volatile doorbell; int transop_timeout; scalar_t__ sis64; TYPE_3__* pdev; TYPE_2__ regs; TYPE_1__* hrrq; } ;
struct TYPE_10__ {unsigned long data; void (* function ) (unsigned long) ;scalar_t__ expires; } ;
struct ipr_cmnd {TYPE_4__* hrrq; int queue; TYPE_5__ timer; int done; int job_step; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_9__ {int hrrq_pending_q; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {int allow_interrupts; int _lock; } ;


 int ENTER ;
 int HZ ;
 int volatile IPR_ENDIAN_SWAP_KEY ;
 int volatile IPR_PCII_ERROR_INTERRUPTS ;
 int volatile IPR_PCII_HRRQ_UPDATED ;
 int volatile IPR_PCII_IOA_TRANS_TO_OPER ;
 int IPR_PCII_IPL_STAGE_CHANGE ;
 int volatile IPR_PCII_OPER_INTERRUPTS ;
 int IPR_RC_JOB_CONTINUE ;
 int IPR_RC_JOB_RETURN ;
 int LEAVE ;
 int add_timer (TYPE_5__*) ;
 int dev_info (int *,char*) ;
 int ipr_init_ioa_mem (struct ipr_ioa_cfg*) ;
 int ipr_ioafp_identify_hrrq ;
 scalar_t__ ipr_oper_timeout ;
 int ipr_reset_ioa_job ;
 int ipr_reset_next_stage ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 int readl (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wmb () ;
 int writel (int volatile,int ) ;
 int writeq (int volatile,int ) ;

__attribute__((used)) static int ipr_reset_enable_ioa(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 volatile u32 int_reg;
 volatile u64 maskval;
 int i;

 ENTER;
 ipr_cmd->job_step = ipr_ioafp_identify_hrrq;
 ipr_init_ioa_mem(ioa_cfg);

 for (i = 0; i < ioa_cfg->hrrq_num; i++) {
  spin_lock(&ioa_cfg->hrrq[i]._lock);
  ioa_cfg->hrrq[i].allow_interrupts = 1;
  spin_unlock(&ioa_cfg->hrrq[i]._lock);
 }
 wmb();
 if (ioa_cfg->sis64) {

  writel(IPR_ENDIAN_SWAP_KEY, ioa_cfg->regs.endian_swap_reg);
  int_reg = readl(ioa_cfg->regs.endian_swap_reg);
 }

 int_reg = readl(ioa_cfg->regs.sense_interrupt_reg32);

 if (int_reg & IPR_PCII_IOA_TRANS_TO_OPER) {
  writel((IPR_PCII_ERROR_INTERRUPTS | IPR_PCII_HRRQ_UPDATED),
         ioa_cfg->regs.clr_interrupt_mask_reg32);
  int_reg = readl(ioa_cfg->regs.sense_interrupt_mask_reg);
  return IPR_RC_JOB_CONTINUE;
 }


 writel(ioa_cfg->doorbell, ioa_cfg->regs.set_uproc_interrupt_reg32);

 if (ioa_cfg->sis64) {
  maskval = IPR_PCII_IPL_STAGE_CHANGE;
  maskval = (maskval << 32) | IPR_PCII_OPER_INTERRUPTS;
  writeq(maskval, ioa_cfg->regs.clr_interrupt_mask_reg);
 } else
  writel(IPR_PCII_OPER_INTERRUPTS, ioa_cfg->regs.clr_interrupt_mask_reg32);

 int_reg = readl(ioa_cfg->regs.sense_interrupt_mask_reg);

 dev_info(&ioa_cfg->pdev->dev, "Initializing IOA.\n");

 if (ioa_cfg->sis64) {
  ipr_cmd->job_step = ipr_reset_next_stage;
  return IPR_RC_JOB_CONTINUE;
 }

 ipr_cmd->timer.data = (unsigned long) ipr_cmd;
 ipr_cmd->timer.expires = jiffies + (ioa_cfg->transop_timeout * HZ);
 ipr_cmd->timer.function = (void (*)(unsigned long))ipr_oper_timeout;
 ipr_cmd->done = ipr_reset_ioa_job;
 add_timer(&ipr_cmd->timer);
 list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_pending_q);

 LEAVE;
 return IPR_RC_JOB_RETURN;
}
