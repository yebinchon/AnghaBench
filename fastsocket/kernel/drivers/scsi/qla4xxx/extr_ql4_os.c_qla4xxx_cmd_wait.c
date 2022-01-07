
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct scsi_qla_host {TYPE_1__* host; int hardware_lock; } ;
struct scsi_cmnd {int dummy; } ;
struct TYPE_2__ {scalar_t__ can_queue; } ;


 scalar_t__ CMD_SP (struct scsi_cmnd*) ;
 int DEBUG2 (int ) ;
 unsigned long HZ ;
 int KERN_INFO ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 unsigned long WAIT_CMD_TOV ;
 unsigned long jiffies ;
 int msleep (int) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,unsigned long) ;
 struct scsi_cmnd* scsi_host_find_tag (TYPE_1__*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static int qla4xxx_cmd_wait(struct scsi_qla_host *ha)
{
 uint32_t index = 0;
 unsigned long flags;
 struct scsi_cmnd *cmd;

 unsigned long wtime = jiffies + (WAIT_CMD_TOV * HZ);

 DEBUG2(ql4_printk(KERN_INFO, ha, "Wait up to %d seconds for cmds to "
     "complete\n", WAIT_CMD_TOV));

 while (!time_after_eq(jiffies, wtime)) {
  spin_lock_irqsave(&ha->hardware_lock, flags);

  for (index = 0; index < ha->host->can_queue; index++) {
   cmd = scsi_host_find_tag(ha->host, index);






   if (cmd != ((void*)0) && CMD_SP(cmd))
    break;
  }
  spin_unlock_irqrestore(&ha->hardware_lock, flags);


  if (index == ha->host->can_queue)
   return QLA_SUCCESS;

  msleep(1000);
 }


 return QLA_ERROR;
}
