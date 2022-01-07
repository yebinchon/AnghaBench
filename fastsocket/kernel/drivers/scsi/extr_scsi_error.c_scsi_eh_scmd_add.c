
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int eh_eflags; int eh_entry; TYPE_1__* device; } ;
struct Scsi_Host {int host_lock; int host_failed; int eh_cmd_q; scalar_t__ last_reset; scalar_t__ eh_deadline; int ehandler; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 int SHOST_CANCEL_RECOVERY ;
 int SHOST_RECOVERY ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 int scsi_eh_wakeup (struct Scsi_Host*) ;
 scalar_t__ scsi_host_set_state (struct Scsi_Host*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

int scsi_eh_scmd_add(struct scsi_cmnd *scmd, int eh_flag)
{
 struct Scsi_Host *shost = scmd->device->host;
 unsigned long flags;
 int ret = 0;

 if (!shost->ehandler)
  return 0;

 spin_lock_irqsave(shost->host_lock, flags);
 if (scsi_host_set_state(shost, SHOST_RECOVERY))
  if (scsi_host_set_state(shost, SHOST_CANCEL_RECOVERY))
   goto out_unlock;

 if (shost->eh_deadline && !shost->last_reset)
  shost->last_reset = jiffies;

 ret = 1;
 scmd->eh_eflags |= eh_flag;
 list_add_tail(&scmd->eh_entry, &shost->eh_cmd_q);
 shost->host_failed++;
 scsi_eh_wakeup(shost);
 out_unlock:
 spin_unlock_irqrestore(shost->host_lock, flags);
 return ret;
}
