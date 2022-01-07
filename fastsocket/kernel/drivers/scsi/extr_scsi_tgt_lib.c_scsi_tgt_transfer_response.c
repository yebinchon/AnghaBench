
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int request; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_2__ {int (* transfer_response ) (struct scsi_cmnd*,int ) ;} ;


 int EAGAIN ;


 int dprintk (char*,struct scsi_cmnd*,int ) ;
 int rq_data_dir (int ) ;
 int scsi_tgt_cmd_done ;
 struct Scsi_Host* scsi_tgt_cmd_to_host (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*,int ) ;

__attribute__((used)) static int scsi_tgt_transfer_response(struct scsi_cmnd *cmd)
{
 struct Scsi_Host *shost = scsi_tgt_cmd_to_host(cmd);
 int err;

 dprintk("cmd %p %u\n", cmd, rq_data_dir(cmd->request));

 err = shost->hostt->transfer_response(cmd, scsi_tgt_cmd_done);
 switch (err) {
 case 128:
 case 129:
  return -EAGAIN;
 }
 return 0;
}
