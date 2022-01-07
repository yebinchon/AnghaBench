
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct request {int cmd_len; int * cmd; int retries; int timeout; } ;


 int SD_FLUSH_TIMEOUT ;
 int SD_MAX_RETRIES ;
 int SYNCHRONIZE_CACHE ;
 int scsi_setup_blk_pc_cmnd (struct scsi_device*,struct request*) ;

__attribute__((used)) static int scsi_setup_flush_cmnd(struct scsi_device *sdp, struct request *rq)
{
 rq->timeout = SD_FLUSH_TIMEOUT;
 rq->retries = SD_MAX_RETRIES;
 rq->cmd[0] = SYNCHRONIZE_CACHE;
 rq->cmd_len = 10;

 return scsi_setup_blk_pc_cmnd(sdp, rq);
}
