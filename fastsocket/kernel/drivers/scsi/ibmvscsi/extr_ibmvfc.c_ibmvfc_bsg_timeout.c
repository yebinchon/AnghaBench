
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int version; int length; int opcode; } ;
struct ibmvfc_tmf {unsigned long scsi_id; int my_cancel_key; int cancel_key; TYPE_2__ common; } ;
struct ibmvfc_host {int aborting_passthru; scalar_t__ state; TYPE_3__* host; int dev; } ;
struct TYPE_4__ {struct ibmvfc_tmf tmf; } ;
struct ibmvfc_event {TYPE_1__ iu; } ;
struct fc_bsg_job {scalar_t__ dd_data; int shost; } ;
struct TYPE_6__ {int host_lock; } ;


 int EIO ;
 int ENTER ;
 scalar_t__ IBMVFC_ACTIVE ;
 int IBMVFC_INTERNAL_CANCEL_KEY ;
 int IBMVFC_MAD_FORMAT ;
 int IBMVFC_PASSTHRU_CANCEL_KEY ;
 int IBMVFC_TMF_MAD ;
 int LEAVE ;
 int __ibmvfc_reset_host (struct ibmvfc_host*) ;
 int default_timeout ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,unsigned long) ;
 int ibmvfc_bsg_timeout_done ;
 struct ibmvfc_event* ibmvfc_get_event (struct ibmvfc_host*) ;
 int ibmvfc_init_event (struct ibmvfc_event*,int ,int ) ;
 int ibmvfc_send_event (struct ibmvfc_event*,struct ibmvfc_host*,int ) ;
 int memset (struct ibmvfc_tmf*,int ,int) ;
 struct ibmvfc_host* shost_priv (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int ibmvfc_bsg_timeout(struct fc_bsg_job *job)
{
 struct ibmvfc_host *vhost = shost_priv(job->shost);
 unsigned long port_id = (unsigned long)job->dd_data;
 struct ibmvfc_event *evt;
 struct ibmvfc_tmf *tmf;
 unsigned long flags;
 int rc;

 ENTER;
 spin_lock_irqsave(vhost->host->host_lock, flags);
 if (vhost->aborting_passthru || vhost->state != IBMVFC_ACTIVE) {
  __ibmvfc_reset_host(vhost);
  spin_unlock_irqrestore(vhost->host->host_lock, flags);
  return 0;
 }

 vhost->aborting_passthru = 1;
 evt = ibmvfc_get_event(vhost);
 ibmvfc_init_event(evt, ibmvfc_bsg_timeout_done, IBMVFC_MAD_FORMAT);

 tmf = &evt->iu.tmf;
 memset(tmf, 0, sizeof(*tmf));
 tmf->common.version = 1;
 tmf->common.opcode = IBMVFC_TMF_MAD;
 tmf->common.length = sizeof(*tmf);
 tmf->scsi_id = port_id;
 tmf->cancel_key = IBMVFC_PASSTHRU_CANCEL_KEY;
 tmf->my_cancel_key = IBMVFC_INTERNAL_CANCEL_KEY;
 rc = ibmvfc_send_event(evt, vhost, default_timeout);

 if (rc != 0) {
  vhost->aborting_passthru = 0;
  dev_err(vhost->dev, "Failed to send cancel event. rc=%d\n", rc);
  rc = -EIO;
 } else
  dev_info(vhost->dev, "Cancelling passthru command to port id 0x%lx\n",
    port_id);

 spin_unlock_irqrestore(vhost->host->host_lock, flags);

 LEAVE;
 return rc;
}
