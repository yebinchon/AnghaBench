
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_req {scalar_t__ status; scalar_t__ sccb; } ;
struct sccb_header {int response_code; } ;


 scalar_t__ SCLP_REQ_DONE ;
 int sclp_dispatch_evbufs (struct sccb_header*) ;
 int sclp_lock ;
 int sclp_reading_state ;
 int sclp_reading_state_idle ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
sclp_read_cb(struct sclp_req *req, void *data)
{
 unsigned long flags;
 struct sccb_header *sccb;

 sccb = (struct sccb_header *) req->sccb;
 if (req->status == SCLP_REQ_DONE && (sccb->response_code == 0x20 ||
     sccb->response_code == 0x220))
  sclp_dispatch_evbufs(sccb);
 spin_lock_irqsave(&sclp_lock, flags);
 sclp_reading_state = sclp_reading_state_idle;
 spin_unlock_irqrestore(&sclp_lock, flags);
}
