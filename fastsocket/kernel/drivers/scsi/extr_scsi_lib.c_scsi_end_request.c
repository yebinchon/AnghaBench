
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {struct request* request; TYPE_1__* device; } ;
struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct TYPE_2__ {struct request_queue* request_queue; } ;


 int __scsi_release_buffers (struct scsi_cmnd*,int ) ;
 scalar_t__ blk_end_request (struct request*,int,int) ;
 int blk_end_request_all (struct request*,int) ;
 int scsi_next_command (struct scsi_cmnd*) ;
 scalar_t__ scsi_noretry_cmd (struct scsi_cmnd*) ;
 int scsi_release_buffers (struct scsi_cmnd*) ;
 int scsi_requeue_command (struct request_queue*,struct scsi_cmnd*) ;

__attribute__((used)) static struct scsi_cmnd *scsi_end_request(struct scsi_cmnd *cmd, int error,
       int bytes, int requeue)
{
 struct request_queue *q = cmd->device->request_queue;
 struct request *req = cmd->request;





 if (blk_end_request(req, error, bytes)) {

  if (error && scsi_noretry_cmd(cmd))
   blk_end_request_all(req, error);
  else {
   if (requeue) {





    scsi_release_buffers(cmd);
    scsi_requeue_command(q, cmd);
    cmd = ((void*)0);
   }
   return cmd;
  }
 }





 __scsi_release_buffers(cmd, 0);
 scsi_next_command(cmd);
 return ((void*)0);
}
