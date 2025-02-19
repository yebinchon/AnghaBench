
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {int sense_interrupt_mask_reg; int set_interrupt_mask_reg; int sense_interrupt_reg32; int init_feedback_reg; } ;
struct ipr_ioa_cfg {unsigned long transop_timeout; TYPE_1__ regs; } ;
struct TYPE_6__ {unsigned long data; void (* function ) (unsigned long) ;scalar_t__ expires; } ;
struct ipr_cmnd {TYPE_2__* hrrq; int queue; TYPE_3__ timer; int done; void* job_step; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_5__ {int hrrq_pending_q; } ;


 unsigned long HZ ;
 unsigned long IPR_IPL_INIT_DEFAULT_STAGE_TIME ;
 unsigned long IPR_IPL_INIT_MIN_STAGE_TIME ;
 int IPR_IPL_INIT_STAGE_MASK ;
 int IPR_IPL_INIT_STAGE_TIME_MASK ;
 unsigned long IPR_IPL_INIT_STAGE_TRANSOP ;
 unsigned long IPR_IPL_INIT_STAGE_UNKNOWN ;
 unsigned long IPR_LONG_OPERATIONAL_TIMEOUT ;
 int volatile IPR_PCII_IOA_TRANS_TO_OPER ;
 int IPR_PCII_IPL_STAGE_CHANGE ;
 int IPR_RC_JOB_CONTINUE ;
 int IPR_RC_JOB_RETURN ;
 int add_timer (TYPE_3__*) ;
 int ipr_dbg (char*,unsigned long,unsigned long) ;
 void* ipr_ioafp_identify_hrrq ;
 scalar_t__ ipr_oper_timeout ;
 int ipr_reset_ioa_job ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 void* readl (int ) ;
 int writel (int,int ) ;
 int writeq (int,int ) ;

__attribute__((used)) static int ipr_reset_next_stage(struct ipr_cmnd *ipr_cmd)
{
 unsigned long stage, stage_time;
 u32 feedback;
 volatile u32 int_reg;
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 u64 maskval = 0;

 feedback = readl(ioa_cfg->regs.init_feedback_reg);
 stage = feedback & IPR_IPL_INIT_STAGE_MASK;
 stage_time = feedback & IPR_IPL_INIT_STAGE_TIME_MASK;

 ipr_dbg("IPL stage = 0x%lx, IPL stage time = %ld\n", stage, stage_time);


 if (stage_time == 0)
  stage_time = IPR_IPL_INIT_DEFAULT_STAGE_TIME;
 else if (stage_time < IPR_IPL_INIT_MIN_STAGE_TIME)
  stage_time = IPR_IPL_INIT_MIN_STAGE_TIME;
 else if (stage_time > IPR_LONG_OPERATIONAL_TIMEOUT)
  stage_time = IPR_LONG_OPERATIONAL_TIMEOUT;

 if (stage == IPR_IPL_INIT_STAGE_UNKNOWN) {
  writel(IPR_PCII_IPL_STAGE_CHANGE, ioa_cfg->regs.set_interrupt_mask_reg);
  int_reg = readl(ioa_cfg->regs.sense_interrupt_mask_reg);
  stage_time = ioa_cfg->transop_timeout;
  ipr_cmd->job_step = ipr_ioafp_identify_hrrq;
 } else if (stage == IPR_IPL_INIT_STAGE_TRANSOP) {
  int_reg = readl(ioa_cfg->regs.sense_interrupt_reg32);
  if (int_reg & IPR_PCII_IOA_TRANS_TO_OPER) {
   ipr_cmd->job_step = ipr_ioafp_identify_hrrq;
   maskval = IPR_PCII_IPL_STAGE_CHANGE;
   maskval = (maskval << 32) | IPR_PCII_IOA_TRANS_TO_OPER;
   writeq(maskval, ioa_cfg->regs.set_interrupt_mask_reg);
   int_reg = readl(ioa_cfg->regs.sense_interrupt_mask_reg);
   return IPR_RC_JOB_CONTINUE;
  }
 }

 ipr_cmd->timer.data = (unsigned long) ipr_cmd;
 ipr_cmd->timer.expires = jiffies + stage_time * HZ;
 ipr_cmd->timer.function = (void (*)(unsigned long))ipr_oper_timeout;
 ipr_cmd->done = ipr_reset_ioa_job;
 add_timer(&ipr_cmd->timer);

 list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_pending_q);

 return IPR_RC_JOB_RETURN;
}
