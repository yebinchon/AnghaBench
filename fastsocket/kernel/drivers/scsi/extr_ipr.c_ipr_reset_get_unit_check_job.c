
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_ioa_cfg {scalar_t__ ioa_unit_checked; } ;
struct ipr_cmnd {int job_step; struct ipr_ioa_cfg* ioa_cfg; } ;


 int ENTER ;
 int IPR_RC_JOB_RETURN ;
 int LEAVE ;
 int ipr_get_unit_check_buffer (struct ipr_ioa_cfg*) ;
 int ipr_reset_alert ;
 int ipr_reset_start_timer (struct ipr_cmnd*,int ) ;

__attribute__((used)) static int ipr_reset_get_unit_check_job(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;

 ENTER;
 ioa_cfg->ioa_unit_checked = 0;
 ipr_get_unit_check_buffer(ioa_cfg);
 ipr_cmd->job_step = ipr_reset_alert;
 ipr_reset_start_timer(ipr_cmd, 0);

 LEAVE;
 return IPR_RC_JOB_RETURN;
}
