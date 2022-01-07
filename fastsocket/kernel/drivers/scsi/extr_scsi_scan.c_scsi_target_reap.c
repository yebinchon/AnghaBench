
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct scsi_target {int state; scalar_t__ reap_ref; int ew; int devices; TYPE_1__ dev; } ;
struct Scsi_Host {int host_lock; } ;
typedef enum scsi_target_state { ____Placeholder_scsi_target_state } scsi_target_state ;


 int BUG_ON (int) ;
 int STARGET_CREATED ;
 int STARGET_DEL ;
 struct Scsi_Host* dev_to_shost (int ) ;
 int execute_in_process_context (int ,int *) ;
 scalar_t__ list_empty (int *) ;
 int scsi_target_destroy (struct scsi_target*) ;
 int scsi_target_reap_usercontext ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void scsi_target_reap(struct scsi_target *starget)
{
 struct Scsi_Host *shost = dev_to_shost(starget->dev.parent);
 unsigned long flags;
 enum scsi_target_state state;
 int empty = 0;

 spin_lock_irqsave(shost->host_lock, flags);
 state = starget->state;
 if (--starget->reap_ref == 0 && list_empty(&starget->devices)) {
  empty = 1;
  starget->state = STARGET_DEL;
 }
 spin_unlock_irqrestore(shost->host_lock, flags);

 if (!empty)
  return;

 BUG_ON(state == STARGET_DEL);
 if (state == STARGET_CREATED)
  scsi_target_destroy(starget);
 else
  execute_in_process_context(scsi_target_reap_usercontext,
        &starget->ew);
}
