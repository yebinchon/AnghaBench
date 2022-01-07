
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct carm_request {struct request* rq; } ;
struct carm_host {int lock; int oob_q; } ;


 int GFP_KERNEL ;
 int WRITE ;
 struct request* blk_get_request (int ,int ,int ) ;
 struct carm_request* carm_get_request (struct carm_host*) ;
 int carm_put_request (struct carm_host*,struct carm_request*) ;
 int msleep (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct carm_request *carm_get_special(struct carm_host *host)
{
 unsigned long flags;
 struct carm_request *crq = ((void*)0);
 struct request *rq;
 int tries = 5000;

 while (tries-- > 0) {
  spin_lock_irqsave(&host->lock, flags);
  crq = carm_get_request(host);
  spin_unlock_irqrestore(&host->lock, flags);

  if (crq)
   break;
  msleep(10);
 }

 if (!crq)
  return ((void*)0);

 rq = blk_get_request(host->oob_q, WRITE , GFP_KERNEL);
 if (!rq) {
  spin_lock_irqsave(&host->lock, flags);
  carm_put_request(host, crq);
  spin_unlock_irqrestore(&host->lock, flags);
  return ((void*)0);
 }

 crq->rq = rq;
 return crq;
}
