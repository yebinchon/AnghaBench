
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct srb {int flags; TYPE_1__* cmd; scalar_t__ iocb_cnt; } ;
struct scsi_qla_host {int iocb_cnt; int host; } ;
struct scsi_cmnd {int dummy; } ;
struct TYPE_2__ {unsigned char* host_scribble; } ;


 scalar_t__ CMD_SP (struct scsi_cmnd*) ;
 scalar_t__ MAX_SRBS ;
 int SRB_DMA_VALID ;
 struct scsi_cmnd* scsi_host_find_tag (int ,int ) ;

struct srb *qla4xxx_del_from_active_array(struct scsi_qla_host *ha,
    uint32_t index)
{
 struct srb *srb = ((void*)0);
 struct scsi_cmnd *cmd = ((void*)0);

 cmd = scsi_host_find_tag(ha->host, index);
 if (!cmd)
  return srb;

 srb = (struct srb *)CMD_SP(cmd);
 if (!srb)
  return srb;


 if (srb->flags & SRB_DMA_VALID) {
  ha->iocb_cnt -= srb->iocb_cnt;
  if (srb->cmd)
   srb->cmd->host_scribble =
    (unsigned char *)(unsigned long) MAX_SRBS;
 }
 return srb;
}
