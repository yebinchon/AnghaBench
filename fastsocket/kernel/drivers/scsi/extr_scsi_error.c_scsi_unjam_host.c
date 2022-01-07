
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int host_lock; scalar_t__ last_reset; scalar_t__ eh_deadline; int eh_cmd_q; } ;


 int LIST_HEAD (int ) ;
 int SCSI_LOG_ERROR_RECOVERY (int,int ) ;
 int eh_done_q ;
 int eh_work_q ;
 int list_splice_init (int *,int *) ;
 int scsi_eh_abort_cmds (int *,int *) ;
 int scsi_eh_flush_done_q (int *) ;
 int scsi_eh_get_sense (int *,int *) ;
 int scsi_eh_prt_fail_stats (struct Scsi_Host*,int *) ;
 int scsi_eh_ready_devs (struct Scsi_Host*,int *,int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void scsi_unjam_host(struct Scsi_Host *shost)
{
 unsigned long flags;
 LIST_HEAD(eh_work_q);
 LIST_HEAD(eh_done_q);

 spin_lock_irqsave(shost->host_lock, flags);
 list_splice_init(&shost->eh_cmd_q, &eh_work_q);
 spin_unlock_irqrestore(shost->host_lock, flags);

 SCSI_LOG_ERROR_RECOVERY(1, scsi_eh_prt_fail_stats(shost, &eh_work_q));

 if (!scsi_eh_get_sense(&eh_work_q, &eh_done_q))
  if (!scsi_eh_abort_cmds(&eh_work_q, &eh_done_q))
   scsi_eh_ready_devs(shost, &eh_work_q, &eh_done_q);

 spin_lock_irqsave(shost->host_lock, flags);
 if (shost->eh_deadline)
  shost->last_reset = 0;
 spin_unlock_irqrestore(shost->host_lock, flags);
 scsi_eh_flush_done_q(&eh_done_q);
}
