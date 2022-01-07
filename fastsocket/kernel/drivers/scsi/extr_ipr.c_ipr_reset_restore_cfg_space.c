
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int endian_swap_reg; } ;
struct ipr_ioa_cfg {scalar_t__ sdt_state; int work_q; scalar_t__ sis64; scalar_t__ dump_timeout; scalar_t__ in_ioa_bringdown; scalar_t__ ioa_unit_checked; TYPE_4__ regs; TYPE_5__* pdev; } ;
struct TYPE_6__ {void* ioasc; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;
struct TYPE_8__ {TYPE_2__ ioasa; } ;
struct ipr_cmnd {int job_step; TYPE_3__ s; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_10__ {int state_saved; } ;


 int ENTER ;
 scalar_t__ GET_DUMP ;
 int IPR_DUMP_DELAY_TIMEOUT ;
 int IPR_ENDIAN_SWAP_KEY ;
 int IPR_IOASC_PCI_ACCESS_ERROR ;
 int IPR_RC_JOB_CONTINUE ;
 int IPR_RC_JOB_RETURN ;
 int IPR_SIS32_DUMP_TIMEOUT ;
 int IPR_SIS64_DUMP_TIMEOUT ;
 int LEAVE ;
 int PCIBIOS_SUCCESSFUL ;
 scalar_t__ READ_DUMP ;
 void* cpu_to_be32 (int ) ;
 int ipr_fail_all_ops (struct ipr_ioa_cfg*) ;
 int ipr_get_unit_check_buffer (struct ipr_ioa_cfg*) ;
 int ipr_ioa_bringdown_done ;
 int ipr_reset_alert ;
 int ipr_reset_enable_ioa ;
 int ipr_reset_get_unit_check_job ;
 int ipr_reset_start_timer (struct ipr_cmnd*,int ) ;
 int ipr_reset_wait_for_dump ;
 scalar_t__ ipr_set_pcix_cmd_reg (struct ipr_ioa_cfg*) ;
 int pci_restore_state (TYPE_5__*) ;
 int readl (int ) ;
 int schedule_work (int *) ;
 int writel (int ,int ) ;

__attribute__((used)) static int ipr_reset_restore_cfg_space(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 u32 int_reg;
 int rc;

 ENTER;
 ioa_cfg->pdev->state_saved = 1;
 rc = pci_restore_state(ioa_cfg->pdev);

 if (rc != PCIBIOS_SUCCESSFUL) {
  ipr_cmd->s.ioasa.hdr.ioasc = cpu_to_be32(IPR_IOASC_PCI_ACCESS_ERROR);
  return IPR_RC_JOB_CONTINUE;
 }

 if (ipr_set_pcix_cmd_reg(ioa_cfg)) {
  ipr_cmd->s.ioasa.hdr.ioasc = cpu_to_be32(IPR_IOASC_PCI_ACCESS_ERROR);
  return IPR_RC_JOB_CONTINUE;
 }

 ipr_fail_all_ops(ioa_cfg);

 if (ioa_cfg->sis64) {

  writel(IPR_ENDIAN_SWAP_KEY, ioa_cfg->regs.endian_swap_reg);
  int_reg = readl(ioa_cfg->regs.endian_swap_reg);
 }

 if (ioa_cfg->ioa_unit_checked) {
  if (ioa_cfg->sis64) {
   ipr_cmd->job_step = ipr_reset_get_unit_check_job;
   ipr_reset_start_timer(ipr_cmd, IPR_DUMP_DELAY_TIMEOUT);
  } else {
   ioa_cfg->ioa_unit_checked = 0;
   ipr_get_unit_check_buffer(ioa_cfg);
   ipr_cmd->job_step = ipr_reset_alert;
   ipr_reset_start_timer(ipr_cmd, 0);
  }
  return IPR_RC_JOB_RETURN;
 }

 if (ioa_cfg->in_ioa_bringdown) {
  ipr_cmd->job_step = ipr_ioa_bringdown_done;
 } else {
  ipr_cmd->job_step = ipr_reset_enable_ioa;

  if (GET_DUMP == ioa_cfg->sdt_state) {
   ioa_cfg->sdt_state = READ_DUMP;
   ioa_cfg->dump_timeout = 0;
   if (ioa_cfg->sis64)
    ipr_reset_start_timer(ipr_cmd, IPR_SIS64_DUMP_TIMEOUT);
   else
    ipr_reset_start_timer(ipr_cmd, IPR_SIS32_DUMP_TIMEOUT);
   ipr_cmd->job_step = ipr_reset_wait_for_dump;
   schedule_work(&ioa_cfg->work_q);
   return IPR_RC_JOB_RETURN;
  }
 }

 LEAVE;
 return IPR_RC_JOB_CONTINUE;
}
