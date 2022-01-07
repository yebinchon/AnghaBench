
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * prev; } ;
struct sclp_req {TYPE_1__ list; int sccb; scalar_t__ start_count; int status; } ;


 int EIO ;
 int ENODATA ;
 int SCLP_REQ_QUEUED ;
 int __sclp_can_add_request (struct sclp_req*) ;
 int __sclp_start_request (struct sclp_req*) ;
 int list_add_tail (TYPE_1__*,int *) ;
 int list_del (TYPE_1__*) ;
 int sclp_lock ;
 int sclp_req_queue ;
 scalar_t__ sclp_running_state ;
 scalar_t__ sclp_running_state_idle ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
sclp_add_request(struct sclp_req *req)
{
 unsigned long flags;
 int rc;

 spin_lock_irqsave(&sclp_lock, flags);
 if (!__sclp_can_add_request(req)) {
  spin_unlock_irqrestore(&sclp_lock, flags);
  return -EIO;
 }
 req->status = SCLP_REQ_QUEUED;
 req->start_count = 0;
 list_add_tail(&req->list, &sclp_req_queue);
 rc = 0;

 if (sclp_running_state == sclp_running_state_idle &&
     req->list.prev == &sclp_req_queue) {
  if (!req->sccb) {
   list_del(&req->list);
   rc = -ENODATA;
   goto out;
  }
  rc = __sclp_start_request(req);
  if (rc)
   list_del(&req->list);
 }
out:
 spin_unlock_irqrestore(&sclp_lock, flags);
 return rc;
}
