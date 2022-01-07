
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {struct bsg_command* end_io_data; TYPE_1__* next_rq; int bio; } ;
struct bsg_device {int name; int lock; int busy_list; } ;
struct TYPE_4__ {int flags; int duration; } ;
struct bsg_command {int list; TYPE_2__ hdr; int bidi_bio; int bio; struct request* rq; } ;
struct TYPE_3__ {int bio; } ;


 int BSG_FLAG_Q_AT_TAIL ;
 int blk_execute_rq_nowait (struct request_queue*,int *,struct request*,int,int ) ;
 int bsg_rq_end_io ;
 int dprintk (char*,int ,struct request*,struct bsg_command*) ;
 int jiffies ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void bsg_add_command(struct bsg_device *bd, struct request_queue *q,
       struct bsg_command *bc, struct request *rq)
{
 int at_head = (0 == (bc->hdr.flags & BSG_FLAG_Q_AT_TAIL));




 bc->rq = rq;
 bc->bio = rq->bio;
 if (rq->next_rq)
  bc->bidi_bio = rq->next_rq->bio;
 bc->hdr.duration = jiffies;
 spin_lock_irq(&bd->lock);
 list_add_tail(&bc->list, &bd->busy_list);
 spin_unlock_irq(&bd->lock);

 dprintk("%s: queueing rq %p, bc %p\n", bd->name, rq, bc);

 rq->end_io_data = bc;
 blk_execute_rq_nowait(q, ((void*)0), rq, at_head, bsg_rq_end_io);
}
