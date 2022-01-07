
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_tgt_cmd {int work; int tag; int itn_id; } ;
struct scsi_cmnd {TYPE_1__* request; } ;
struct TYPE_2__ {struct scsi_tgt_cmd* end_io_data; } ;


 int dprintk (char*,struct scsi_cmnd*,int ) ;
 int queue_work (int ,int *) ;
 int rq_data_dir (TYPE_1__*) ;
 int scsi_release_buffers (struct scsi_cmnd*) ;
 int scsi_tgt_uspace_send_status (struct scsi_cmnd*,int ,int ) ;
 int scsi_tgtd ;

__attribute__((used)) static void scsi_tgt_cmd_done(struct scsi_cmnd *cmd)
{
 struct scsi_tgt_cmd *tcmd = cmd->request->end_io_data;

 dprintk("cmd %p %u\n", cmd, rq_data_dir(cmd->request));

 scsi_tgt_uspace_send_status(cmd, tcmd->itn_id, tcmd->tag);

 scsi_release_buffers(cmd);

 queue_work(scsi_tgtd, &tcmd->work);
}
