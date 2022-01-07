
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ipr_ioa_cfg {scalar_t__ dual_raid; TYPE_2__* hrrq; } ;
struct TYPE_7__ {int* cdb; int request_type; } ;
struct TYPE_8__ {TYPE_3__ cmd_pkt; int res_handle; } ;
struct TYPE_5__ {int shutdown_type; } ;
struct ipr_cmnd {int job_step; TYPE_4__ ioarcb; TYPE_1__ u; struct ipr_ioa_cfg* ioa_cfg; } ;
typedef enum ipr_shutdown_type { ____Placeholder_ipr_shutdown_type } ipr_shutdown_type ;
struct TYPE_6__ {int ioa_is_dead; } ;


 int ENTER ;
 unsigned long IPR_ABBREV_SHUTDOWN_TIMEOUT ;
 unsigned long IPR_DUAL_IOA_ABBR_SHUTDOWN_TO ;
 size_t IPR_INIT_HRRQ ;
 unsigned long IPR_INTERNAL_TIMEOUT ;
 int IPR_IOA_RES_HANDLE ;
 int IPR_IOA_SHUTDOWN ;
 int IPR_RC_JOB_CONTINUE ;
 int IPR_RC_JOB_RETURN ;
 int IPR_RQTYPE_IOACMD ;
 int IPR_SHUTDOWN_NONE ;
 int IPR_SHUTDOWN_NORMAL ;
 int IPR_SHUTDOWN_PREPARE_FOR_NORMAL ;
 unsigned long IPR_SHUTDOWN_TIMEOUT ;
 int LEAVE ;
 int cpu_to_be32 (int ) ;
 int ipr_do_req (struct ipr_cmnd*,int ,int ,unsigned long) ;
 scalar_t__ ipr_dual_ioa_raid ;
 int ipr_reset_alert ;
 int ipr_reset_ioa_job ;
 int ipr_reset_ucode_download ;
 int ipr_timeout ;

__attribute__((used)) static int ipr_reset_shutdown_ioa(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 enum ipr_shutdown_type shutdown_type = ipr_cmd->u.shutdown_type;
 unsigned long timeout;
 int rc = IPR_RC_JOB_CONTINUE;

 ENTER;
 if (shutdown_type != IPR_SHUTDOWN_NONE &&
   !ioa_cfg->hrrq[IPR_INIT_HRRQ].ioa_is_dead) {
  ipr_cmd->ioarcb.res_handle = cpu_to_be32(IPR_IOA_RES_HANDLE);
  ipr_cmd->ioarcb.cmd_pkt.request_type = IPR_RQTYPE_IOACMD;
  ipr_cmd->ioarcb.cmd_pkt.cdb[0] = IPR_IOA_SHUTDOWN;
  ipr_cmd->ioarcb.cmd_pkt.cdb[1] = shutdown_type;

  if (shutdown_type == IPR_SHUTDOWN_NORMAL)
   timeout = IPR_SHUTDOWN_TIMEOUT;
  else if (shutdown_type == IPR_SHUTDOWN_PREPARE_FOR_NORMAL)
   timeout = IPR_INTERNAL_TIMEOUT;
  else if (ioa_cfg->dual_raid && ipr_dual_ioa_raid)
   timeout = IPR_DUAL_IOA_ABBR_SHUTDOWN_TO;
  else
   timeout = IPR_ABBREV_SHUTDOWN_TIMEOUT;

  ipr_do_req(ipr_cmd, ipr_reset_ioa_job, ipr_timeout, timeout);

  rc = IPR_RC_JOB_RETURN;
  ipr_cmd->job_step = ipr_reset_ucode_download;
 } else
  ipr_cmd->job_step = ipr_reset_alert;

 LEAVE;
 return rc;
}
