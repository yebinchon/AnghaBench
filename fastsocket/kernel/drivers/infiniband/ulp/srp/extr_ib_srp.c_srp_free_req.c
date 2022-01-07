
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {int lock; int free_reqs; int req_lim; } ;
struct srp_request {int list; } ;
struct scsi_cmnd {int dummy; } ;
typedef scalar_t__ s32 ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int srp_unmap_data (struct scsi_cmnd*,struct srp_target_port*,struct srp_request*) ;

__attribute__((used)) static void srp_free_req(struct srp_target_port *target,
    struct srp_request *req, struct scsi_cmnd *scmnd,
    s32 req_lim_delta)
{
 unsigned long flags;

 srp_unmap_data(scmnd, target, req);

 spin_lock_irqsave(&target->lock, flags);
 target->req_lim += req_lim_delta;
 list_add_tail(&req->list, &target->free_reqs);
 spin_unlock_irqrestore(&target->lock, flags);
}
