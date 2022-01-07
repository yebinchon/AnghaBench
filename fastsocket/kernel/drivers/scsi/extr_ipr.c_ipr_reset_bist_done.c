
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_ioa_cfg {scalar_t__ cfg_locked; int pdev; } ;
struct ipr_cmnd {int job_step; struct ipr_ioa_cfg* ioa_cfg; } ;


 int ENTER ;
 int IPR_RC_JOB_CONTINUE ;
 int LEAVE ;
 int ipr_reset_restore_cfg_space ;
 int pci_cfg_access_unlock (int ) ;

__attribute__((used)) static int ipr_reset_bist_done(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;

 ENTER;
 if (ioa_cfg->cfg_locked)
  pci_cfg_access_unlock(ioa_cfg->pdev);
 ioa_cfg->cfg_locked = 0;
 ipr_cmd->job_step = ipr_reset_restore_cfg_space;
 LEAVE;
 return IPR_RC_JOB_CONTINUE;
}
