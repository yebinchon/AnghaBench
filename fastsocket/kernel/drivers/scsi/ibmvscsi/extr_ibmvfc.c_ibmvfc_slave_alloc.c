
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {void* hostdata; struct Scsi_Host* host; } ;
struct ibmvfc_host {int task_set; } ;
struct fc_rport {int dummy; } ;
struct Scsi_Host {int host_lock; } ;


 int ENXIO ;
 scalar_t__ fc_remote_port_chkready (struct fc_rport*) ;
 int scsi_target (struct scsi_device*) ;
 struct ibmvfc_host* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct fc_rport* starget_to_rport (int ) ;

__attribute__((used)) static int ibmvfc_slave_alloc(struct scsi_device *sdev)
{
 struct Scsi_Host *shost = sdev->host;
 struct fc_rport *rport = starget_to_rport(scsi_target(sdev));
 struct ibmvfc_host *vhost = shost_priv(shost);
 unsigned long flags = 0;

 if (!rport || fc_remote_port_chkready(rport))
  return -ENXIO;

 spin_lock_irqsave(shost->host_lock, flags);
 sdev->hostdata = (void *)(unsigned long)vhost->task_set++;
 spin_unlock_irqrestore(shost->host_lock, flags);
 return 0;
}
