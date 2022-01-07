
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct request* boundary_rq; int end_sector; } ;
struct request {int cmd_flags; scalar_t__ cmd_type; } ;


 int ELEVATOR_INSERT_BACK ;
 int ELEVATOR_INSERT_SORT ;
 int REQ_ELVPRIV ;
 int REQ_HARDBARRIER ;
 int REQ_SOFTBARRIER ;
 scalar_t__ REQ_TYPE_FS ;
 int blk_plug_device (struct request_queue*) ;
 int elv_insert (struct request_queue*,struct request*,int) ;
 int rq_end_sector (struct request*) ;

void __elv_add_request(struct request_queue *q, struct request *rq, int where,
         int plug)
{
 if (rq->cmd_flags & (REQ_SOFTBARRIER | REQ_HARDBARRIER)) {

  if (rq->cmd_type == REQ_TYPE_FS) {
   q->end_sector = rq_end_sector(rq);
   q->boundary_rq = rq;
  }
 } else if (!(rq->cmd_flags & REQ_ELVPRIV) &&
      where == ELEVATOR_INSERT_SORT)
  where = ELEVATOR_INSERT_BACK;

 if (plug)
  blk_plug_device(q);

 elv_insert(q, rq, where);
}
