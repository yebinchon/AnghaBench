
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct raw3270_view {TYPE_3__* dev; } ;
struct raw3270_request {int rescnt; int rc; } ;
struct TYPE_4__ {int dstat; int count; } ;
struct TYPE_5__ {TYPE_1__ cmd; } ;
struct irb {int* ecw; TYPE_2__ scsw; } ;
struct TYPE_6__ {int flags; } ;


 int DEV_STAT_ATTENTION ;
 int DEV_STAT_UNIT_CHECK ;
 int EIO ;
 int EOPNOTSUPP ;
 int RAW3270_FLAGS_ATTN ;
 int RAW3270_FLAGS_BUSY ;
 int RAW3270_IO_BUSY ;
 int RAW3270_IO_DONE ;
 int SNS0_CMD_REJECT ;
 int SNS0_INTERVENTION_REQ ;
 int raw3270_wait_queue ;
 int set_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int
raw3270_init_irq(struct raw3270_view *view, struct raw3270_request *rq,
   struct irb *irb)
{




 if (irb->scsw.cmd.dstat & DEV_STAT_UNIT_CHECK) {

  if (irb->ecw[0] & SNS0_INTERVENTION_REQ) {
   set_bit(RAW3270_FLAGS_BUSY, &view->dev->flags);
   return RAW3270_IO_BUSY;
  }
 }
 if (rq) {
  if (irb->scsw.cmd.dstat & DEV_STAT_UNIT_CHECK) {
   if (irb->ecw[0] & SNS0_CMD_REJECT)
    rq->rc = -EOPNOTSUPP;
   else
    rq->rc = -EIO;
  } else

   rq->rescnt = irb->scsw.cmd.count;
 }
 if (irb->scsw.cmd.dstat & DEV_STAT_ATTENTION) {
  set_bit(RAW3270_FLAGS_ATTN, &view->dev->flags);
  wake_up(&raw3270_wait_queue);
 }
 return RAW3270_IO_DONE;
}
