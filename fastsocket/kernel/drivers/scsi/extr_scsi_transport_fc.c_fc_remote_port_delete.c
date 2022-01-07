
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport {unsigned long dev_loss_tmo; scalar_t__ port_state; int roles; int fast_io_fail_tmo; int dev_loss_work; int fail_io_work; int dev; int flags; } ;
struct Scsi_Host {int active_mode; int host_lock; } ;


 scalar_t__ FC_PORTSTATE_BLOCKED ;
 scalar_t__ FC_PORTSTATE_ONLINE ;
 int FC_PORT_ROLE_FCP_INITIATOR ;
 int FC_RPORT_DEVLOSS_PENDING ;
 unsigned long HZ ;
 int MODE_TARGET ;
 int fc_queue_devloss_work (struct Scsi_Host*,int *,unsigned long) ;
 int fc_tgt_it_nexus_destroy (struct Scsi_Host*,unsigned long) ;
 struct Scsi_Host* rport_to_shost (struct fc_rport*) ;
 int scsi_target_block (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void
fc_remote_port_delete(struct fc_rport *rport)
{
 struct Scsi_Host *shost = rport_to_shost(rport);
 unsigned long timeout = rport->dev_loss_tmo;
 unsigned long flags;
 spin_lock_irqsave(shost->host_lock, flags);

 if (rport->port_state != FC_PORTSTATE_ONLINE) {
  spin_unlock_irqrestore(shost->host_lock, flags);
  return;
 }
 rport->port_state = FC_PORTSTATE_BLOCKED;

 rport->flags |= FC_RPORT_DEVLOSS_PENDING;

 spin_unlock_irqrestore(shost->host_lock, flags);

 if (rport->roles & FC_PORT_ROLE_FCP_INITIATOR &&
     shost->active_mode & MODE_TARGET)
  fc_tgt_it_nexus_destroy(shost, (unsigned long)rport);

 scsi_target_block(&rport->dev);


 if ((rport->fast_io_fail_tmo != -1) &&
     (rport->fast_io_fail_tmo < timeout))
  fc_queue_devloss_work(shost, &rport->fail_io_work,
     rport->fast_io_fail_tmo * HZ);


 fc_queue_devloss_work(shost, &rport->dev_loss_work, timeout * HZ);
}
