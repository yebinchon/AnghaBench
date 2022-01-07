
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct scsi_tgt_cmd {int dummy; } ;
struct scsi_lun {int dummy; } ;
struct scsi_cmnd {TYPE_1__* request; } ;
struct TYPE_2__ {struct scsi_tgt_cmd* end_io_data; } ;


 int cmd_hashlist_del (struct scsi_cmnd*) ;
 int init_scsi_tgt_cmd (TYPE_1__*,struct scsi_tgt_cmd*,int ,int ) ;
 int scsi_tgt_uspace_send_cmd (struct scsi_cmnd*,int ,struct scsi_lun*,int ) ;

int scsi_tgt_queue_command(struct scsi_cmnd *cmd, u64 itn_id,
      struct scsi_lun *scsilun, u64 tag)
{
 struct scsi_tgt_cmd *tcmd = cmd->request->end_io_data;
 int err;

 init_scsi_tgt_cmd(cmd->request, tcmd, itn_id, tag);
 err = scsi_tgt_uspace_send_cmd(cmd, itn_id, scsilun, tag);
 if (err)
  cmd_hashlist_del(cmd);

 return err;
}
