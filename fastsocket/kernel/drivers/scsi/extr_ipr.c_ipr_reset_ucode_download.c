
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipr_sglist {int buffer_len; } ;
struct ipr_ioa_cfg {scalar_t__ sis64; struct ipr_sglist* ucode_sglist; } ;
struct TYPE_3__ {int* cdb; int request_type; } ;
struct TYPE_4__ {TYPE_1__ cmd_pkt; int res_handle; } ;
struct ipr_cmnd {int job_step; TYPE_2__ ioarcb; struct ipr_ioa_cfg* ioa_cfg; } ;


 int ENTER ;
 int IPR_IOA_RES_HANDLE ;
 int IPR_RC_JOB_CONTINUE ;
 int IPR_RC_JOB_RETURN ;
 int IPR_RQTYPE_SCSICDB ;
 int IPR_WRITE_BUFFER_TIMEOUT ;
 int IPR_WR_BUF_DOWNLOAD_AND_SAVE ;
 int LEAVE ;
 int WRITE_BUFFER ;
 int cpu_to_be32 (int ) ;
 int ipr_build_ucode_ioadl (struct ipr_cmnd*,struct ipr_sglist*) ;
 int ipr_build_ucode_ioadl64 (struct ipr_cmnd*,struct ipr_sglist*) ;
 int ipr_do_req (struct ipr_cmnd*,int ,int ,int ) ;
 int ipr_reset_alert ;
 int ipr_reset_ioa_job ;
 int ipr_reset_ucode_download_done ;
 int ipr_timeout ;

__attribute__((used)) static int ipr_reset_ucode_download(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 struct ipr_sglist *sglist = ioa_cfg->ucode_sglist;

 ENTER;
 ipr_cmd->job_step = ipr_reset_alert;

 if (!sglist)
  return IPR_RC_JOB_CONTINUE;

 ipr_cmd->ioarcb.res_handle = cpu_to_be32(IPR_IOA_RES_HANDLE);
 ipr_cmd->ioarcb.cmd_pkt.request_type = IPR_RQTYPE_SCSICDB;
 ipr_cmd->ioarcb.cmd_pkt.cdb[0] = WRITE_BUFFER;
 ipr_cmd->ioarcb.cmd_pkt.cdb[1] = IPR_WR_BUF_DOWNLOAD_AND_SAVE;
 ipr_cmd->ioarcb.cmd_pkt.cdb[6] = (sglist->buffer_len & 0xff0000) >> 16;
 ipr_cmd->ioarcb.cmd_pkt.cdb[7] = (sglist->buffer_len & 0x00ff00) >> 8;
 ipr_cmd->ioarcb.cmd_pkt.cdb[8] = sglist->buffer_len & 0x0000ff;

 if (ioa_cfg->sis64)
  ipr_build_ucode_ioadl64(ipr_cmd, sglist);
 else
  ipr_build_ucode_ioadl(ipr_cmd, sglist);
 ipr_cmd->job_step = ipr_reset_ucode_download_done;

 ipr_do_req(ipr_cmd, ipr_reset_ioa_job, ipr_timeout,
     IPR_WRITE_BUFFER_TIMEOUT);

 LEAVE;
 return IPR_RC_JOB_RETURN;
}
