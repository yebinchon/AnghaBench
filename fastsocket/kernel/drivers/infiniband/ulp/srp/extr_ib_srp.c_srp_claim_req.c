
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {int lock; } ;
struct srp_request {struct scsi_cmnd* scmnd; } ;
struct scsi_cmnd {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct scsi_cmnd *srp_claim_req(struct srp_target_port *target,
           struct srp_request *req,
           struct scsi_cmnd *scmnd)
{
 unsigned long flags;

 spin_lock_irqsave(&target->lock, flags);
 if (!scmnd) {
  scmnd = req->scmnd;
  req->scmnd = ((void*)0);
 } else if (req->scmnd == scmnd) {
  req->scmnd = ((void*)0);
 } else {
  scmnd = ((void*)0);
 }
 spin_unlock_irqrestore(&target->lock, flags);

 return scmnd;
}
