
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipr_cmnd {int job_step; TYPE_1__* ioa_cfg; } ;
struct TYPE_2__ {int pdev; } ;


 int ENTER ;
 int IPR_RC_JOB_RETURN ;
 int IPR_WAIT_FOR_BIST_TIMEOUT ;
 int LEAVE ;
 int ipr_reset_bist_done ;
 int ipr_reset_start_timer (struct ipr_cmnd*,int ) ;
 int pci_set_pcie_reset_state (int ,int ) ;
 int pcie_deassert_reset ;

__attribute__((used)) static int ipr_reset_slot_reset_done(struct ipr_cmnd *ipr_cmd)
{
 ENTER;
 pci_set_pcie_reset_state(ipr_cmd->ioa_cfg->pdev, pcie_deassert_reset);
 ipr_cmd->job_step = ipr_reset_bist_done;
 ipr_reset_start_timer(ipr_cmd, IPR_WAIT_FOR_BIST_TIMEOUT);
 LEAVE;
 return IPR_RC_JOB_RETURN;
}
