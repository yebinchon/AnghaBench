
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {struct bsg_command* end_io_data; } ;
struct bsg_device {int wq_done; int lock; int done_cmds; int done_list; int name; } ;
struct TYPE_2__ {scalar_t__ duration; } ;
struct bsg_command {int list; TYPE_1__ hdr; int bio; struct bsg_device* bd; } ;


 int dprintk (char*,int ,struct request*,struct bsg_command*,int ,int) ;
 scalar_t__ jiffies ;
 scalar_t__ jiffies_to_msecs (scalar_t__) ;
 int list_move_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void bsg_rq_end_io(struct request *rq, int uptodate)
{
 struct bsg_command *bc = rq->end_io_data;
 struct bsg_device *bd = bc->bd;
 unsigned long flags;

 dprintk("%s: finished rq %p bc %p, bio %p stat %d\n",
  bd->name, rq, bc, bc->bio, uptodate);

 bc->hdr.duration = jiffies_to_msecs(jiffies - bc->hdr.duration);

 spin_lock_irqsave(&bd->lock, flags);
 list_move_tail(&bc->list, &bd->done_list);
 bd->done_cmds++;
 spin_unlock_irqrestore(&bd->lock, flags);

 wake_up(&bd->wq_done);
}
