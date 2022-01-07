
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int set_uproc_interrupt_reg32; } ;
struct ipr_ioa_cfg {TYPE_1__ regs; int pdev; } ;
struct TYPE_4__ {int time_left; } ;
struct ipr_cmnd {TYPE_2__ u; int job_step; struct ipr_ioa_cfg* ioa_cfg; } ;


 int ENTER ;
 int IPR_CHECK_FOR_RESET_TIMEOUT ;
 int IPR_RC_JOB_RETURN ;
 int IPR_UPROCI_RESET_ALERT ;
 int IPR_WAIT_FOR_RESET_TIMEOUT ;
 int LEAVE ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_COMMAND ;
 int PCI_COMMAND_MEMORY ;
 int ipr_mask_and_clear_interrupts (struct ipr_ioa_cfg*,int ) ;
 int ipr_reset_block_config_access ;
 int ipr_reset_start_timer (struct ipr_cmnd*,int ) ;
 int ipr_reset_wait_to_start_bist ;
 int pci_read_config_word (int ,int ,int*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int ipr_reset_alert(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 u16 cmd_reg;
 int rc;

 ENTER;
 rc = pci_read_config_word(ioa_cfg->pdev, PCI_COMMAND, &cmd_reg);

 if ((rc == PCIBIOS_SUCCESSFUL) && (cmd_reg & PCI_COMMAND_MEMORY)) {
  ipr_mask_and_clear_interrupts(ioa_cfg, ~0);
  writel(IPR_UPROCI_RESET_ALERT, ioa_cfg->regs.set_uproc_interrupt_reg32);
  ipr_cmd->job_step = ipr_reset_wait_to_start_bist;
 } else {
  ipr_cmd->job_step = ipr_reset_block_config_access;
 }

 ipr_cmd->u.time_left = IPR_WAIT_FOR_RESET_TIMEOUT;
 ipr_reset_start_timer(ipr_cmd, IPR_CHECK_FOR_RESET_TIMEOUT);

 LEAVE;
 return IPR_RC_JOB_RETURN;
}
