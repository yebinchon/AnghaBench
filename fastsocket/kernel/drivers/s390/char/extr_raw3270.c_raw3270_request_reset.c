
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int cda; scalar_t__ count; scalar_t__ cmd_code; } ;
struct raw3270_request {scalar_t__ rc; scalar_t__ rescnt; TYPE_1__ ccw; int buffer; int list; } ;


 int BUG_ON (int) ;
 int CCW_FLAG_SLI ;
 int __pa (int ) ;
 int list_empty (int *) ;

void
raw3270_request_reset(struct raw3270_request *rq)
{
 BUG_ON(!list_empty(&rq->list));
 rq->ccw.cmd_code = 0;
 rq->ccw.count = 0;
 rq->ccw.cda = __pa(rq->buffer);
 rq->ccw.flags = CCW_FLAG_SLI;
 rq->rescnt = 0;
 rq->rc = 0;
}
