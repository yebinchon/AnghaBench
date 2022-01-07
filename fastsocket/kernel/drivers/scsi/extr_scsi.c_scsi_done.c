
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int request; } ;


 int blk_complete_request (int ) ;
 int trace_scsi_dispatch_cmd_done (struct scsi_cmnd*) ;

__attribute__((used)) static void scsi_done(struct scsi_cmnd *cmd)
{
 trace_scsi_dispatch_cmd_done(cmd);
 blk_complete_request(cmd->request);
}
