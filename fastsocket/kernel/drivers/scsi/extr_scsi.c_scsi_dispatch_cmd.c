
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int result; int* cmnd; scalar_t__ cmd_len; TYPE_2__* device; } ;
struct Scsi_Host {scalar_t__ max_cmd_len; scalar_t__ shost_state; int host_lock; TYPE_1__* hostt; } ;
struct TYPE_4__ {scalar_t__ sdev_state; scalar_t__ scsi_level; int lun; struct Scsi_Host* host; int iorequest_cnt; } ;
struct TYPE_3__ {int (* queuecommand ) (struct scsi_cmnd*,int (*) (struct scsi_cmnd*)) ;int lockless; } ;


 int DID_ABORT ;
 int DID_NO_CONNECT ;
 scalar_t__ SCSI_2 ;
 int SCSI_LOG_MLQUEUE (int,int ) ;
 int SCSI_MLQUEUE_DEVICE_BUSY ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int SCSI_MLQUEUE_TARGET_BUSY ;
 scalar_t__ SCSI_UNKNOWN ;
 scalar_t__ SDEV_DEL ;
 scalar_t__ SHOST_DEL ;
 int atomic_inc (int *) ;
 int printk (char*,...) ;
 int scsi_cmd_get_serial (struct Scsi_Host*,struct scsi_cmnd*) ;
 int scsi_device_blocked (TYPE_2__*) ;
 int scsi_done (struct scsi_cmnd*) ;
 int scsi_log_send (struct scsi_cmnd*) ;
 int scsi_queue_insert (struct scsi_cmnd*,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct scsi_cmnd*,int (*) (struct scsi_cmnd*)) ;
 int trace_scsi_dispatch_cmd_error (struct scsi_cmnd*,int) ;
 int trace_scsi_dispatch_cmd_start (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

int scsi_dispatch_cmd(struct scsi_cmnd *cmd)
{
 struct Scsi_Host *host = cmd->device->host;
 unsigned long flags = 0;
 int rtn = 0;

 atomic_inc(&cmd->device->iorequest_cnt);


 if (unlikely(cmd->device->sdev_state == SDEV_DEL)) {



  cmd->result = DID_NO_CONNECT << 16;
  scsi_done(cmd);

  goto out;
 }


 if (unlikely(scsi_device_blocked(cmd->device))) {
  scsi_queue_insert(cmd, SCSI_MLQUEUE_DEVICE_BUSY);

  SCSI_LOG_MLQUEUE(3, printk("queuecommand : device blocked \n"));





  goto out;
 }




 if (cmd->device->scsi_level <= SCSI_2 &&
     cmd->device->scsi_level != SCSI_UNKNOWN) {
  cmd->cmnd[1] = (cmd->cmnd[1] & 0x1f) |
          (cmd->device->lun << 5 & 0xe0);
 }

 scsi_log_send(cmd);





 if (cmd->cmd_len > cmd->device->host->max_cmd_len) {
  SCSI_LOG_MLQUEUE(3,
   printk("queuecommand : command too long. "
          "cdb_size=%d host->max_cmd_len=%d\n",
          cmd->cmd_len, cmd->device->host->max_cmd_len));
  cmd->result = (DID_ABORT << 16);

  scsi_done(cmd);
  goto out;
 }

 if (!host->hostt->lockless) {
  spin_lock_irqsave(host->host_lock, flags);






  scsi_cmd_get_serial(host, cmd);
 }

 if (unlikely(host->shost_state == SHOST_DEL)) {
  cmd->result = (DID_NO_CONNECT << 16);
  scsi_done(cmd);
 } else {
  trace_scsi_dispatch_cmd_start(cmd);
  rtn = host->hostt->queuecommand(cmd, scsi_done);
 }

 if (!host->hostt->lockless)
  spin_unlock_irqrestore(host->host_lock, flags);

 if (rtn) {
  trace_scsi_dispatch_cmd_error(cmd, rtn);
  if (rtn != SCSI_MLQUEUE_DEVICE_BUSY &&
      rtn != SCSI_MLQUEUE_TARGET_BUSY)
   rtn = SCSI_MLQUEUE_HOST_BUSY;

  scsi_queue_insert(cmd, rtn);

  SCSI_LOG_MLQUEUE(3,
      printk("queuecommand : request rejected\n"));
 }

 out:
 SCSI_LOG_MLQUEUE(3, printk("leaving scsi_dispatch_cmnd()\n"));
 return rtn;
}
