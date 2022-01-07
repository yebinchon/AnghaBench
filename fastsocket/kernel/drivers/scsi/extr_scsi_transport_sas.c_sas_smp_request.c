
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sas_rphy {int dummy; } ;
struct request_queue {int queue_lock; } ;
struct request {int errors; } ;
struct Scsi_Host {int transportt; } ;
struct TYPE_4__ {TYPE_1__* f; } ;
struct TYPE_3__ {int (* smp_handler ) (struct Scsi_Host*,struct sas_rphy*,struct request*) ;} ;


 int blk_end_request_all (struct request*,int) ;
 struct request* blk_fetch_request (struct request_queue*) ;
 int blk_queue_plugged (struct request_queue*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 TYPE_2__* to_sas_internal (int ) ;

__attribute__((used)) static void sas_smp_request(struct request_queue *q, struct Scsi_Host *shost,
       struct sas_rphy *rphy)
{
 struct request *req;
 int ret;
 int (*handler)(struct Scsi_Host *, struct sas_rphy *, struct request *);

 while (!blk_queue_plugged(q)) {
  req = blk_fetch_request(q);
  if (!req)
   break;

  spin_unlock_irq(q->queue_lock);

  handler = to_sas_internal(shost->transportt)->f->smp_handler;
  ret = handler(shost, rphy, req);
  req->errors = ret;

  blk_end_request_all(req, ret);

  spin_lock_irq(q->queue_lock);
 }
}
