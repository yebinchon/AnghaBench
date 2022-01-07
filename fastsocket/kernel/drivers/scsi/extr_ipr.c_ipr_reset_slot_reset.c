
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ipr_ioa_cfg {struct pci_dev* pdev; } ;
struct ipr_cmnd {int job_step; struct ipr_ioa_cfg* ioa_cfg; } ;


 int ENTER ;
 int IPR_PCI_RESET_TIMEOUT ;
 int IPR_RC_JOB_RETURN ;
 int LEAVE ;
 int ipr_reset_slot_reset_done ;
 int ipr_reset_start_timer (struct ipr_cmnd*,int ) ;
 int pci_set_pcie_reset_state (struct pci_dev*,int ) ;
 int pcie_warm_reset ;

__attribute__((used)) static int ipr_reset_slot_reset(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 struct pci_dev *pdev = ioa_cfg->pdev;

 ENTER;
 pci_set_pcie_reset_state(pdev, pcie_warm_reset);
 ipr_cmd->job_step = ipr_reset_slot_reset_done;
 ipr_reset_start_timer(ipr_cmd, IPR_PCI_RESET_TIMEOUT);
 LEAVE;
 return IPR_RC_JOB_RETURN;
}
