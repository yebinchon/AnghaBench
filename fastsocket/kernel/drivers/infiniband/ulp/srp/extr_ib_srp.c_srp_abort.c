
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srp_target_port {int scsi_host; } ;
struct srp_request {int index; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; scalar_t__ host_scribble; } ;
struct TYPE_2__ {int lun; int host; } ;


 int DID_ABORT ;
 int FAILED ;
 int KERN_ERR ;
 int SRP_TSK_ABORT_TASK ;
 int SUCCESS ;
 struct srp_target_port* host_to_target (int ) ;
 int shost_printk (int ,int ,char*) ;
 int srp_claim_req (struct srp_target_port*,struct srp_request*,struct scsi_cmnd*) ;
 int srp_free_req (struct srp_target_port*,struct srp_request*,struct scsi_cmnd*,int ) ;
 int srp_send_tsk_mgmt (struct srp_target_port*,int ,int ,int ) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int srp_abort(struct scsi_cmnd *scmnd)
{
 struct srp_target_port *target = host_to_target(scmnd->device->host);
 struct srp_request *req = (struct srp_request *) scmnd->host_scribble;

 shost_printk(KERN_ERR, target->scsi_host, "SRP abort called\n");

 if (!req || !srp_claim_req(target, req, scmnd))
  return FAILED;
 srp_send_tsk_mgmt(target, req->index, scmnd->device->lun,
     SRP_TSK_ABORT_TASK);
 srp_free_req(target, req, scmnd, 0);
 scmnd->result = DID_ABORT << 16;
 scmnd->scsi_done(scmnd);

 return SUCCESS;
}
