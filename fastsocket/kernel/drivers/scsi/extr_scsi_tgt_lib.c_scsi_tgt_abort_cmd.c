
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_tgt_cmd {int work; } ;
struct scsi_cmnd {TYPE_2__* request; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_4__ {struct scsi_tgt_cmd* end_io_data; } ;
struct TYPE_3__ {int (* eh_abort_handler ) (struct scsi_cmnd*) ;} ;


 int eprintk (char*,struct scsi_cmnd*) ;
 int scsi_tgt_cmd_destroy (int *) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int scsi_tgt_abort_cmd(struct Scsi_Host *shost, struct scsi_cmnd *cmd)
{
 struct scsi_tgt_cmd *tcmd;
 int err;

 err = shost->hostt->eh_abort_handler(cmd);
 if (err)
  eprintk("fail to abort %p\n", cmd);

 tcmd = cmd->request->end_io_data;
 scsi_tgt_cmd_destroy(&tcmd->work);
 return err;
}
