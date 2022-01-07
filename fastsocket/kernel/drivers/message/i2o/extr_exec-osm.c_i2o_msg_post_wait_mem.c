
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {void* tcntxt; void* icntxt; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
struct i2o_message {TYPE_2__ u; } ;
struct i2o_dma {int * virt; } ;
struct i2o_exec_wait {int m; int lock; TYPE_3__* msg; scalar_t__ complete; int * wq; int list; int tcntxt; struct i2o_dma dma; } ;
struct i2o_controller {int dummy; } ;
struct TYPE_8__ {int context; } ;
struct TYPE_7__ {int * body; } ;


 int DECLARE_WAIT_QUEUE_HEAD_ONSTACK (int ) ;
 int ENOMEM ;
 int ETIMEDOUT ;
 unsigned long HZ ;
 void* cpu_to_le32 (int ) ;
 TYPE_4__ i2o_exec_driver ;
 struct i2o_exec_wait* i2o_exec_wait_alloc () ;
 int i2o_exec_wait_free (struct i2o_exec_wait*) ;
 int i2o_exec_wait_list ;
 int i2o_flush_reply (struct i2o_controller*,int ) ;
 int i2o_msg_nop (struct i2o_controller*,struct i2o_message*) ;
 int i2o_msg_post (struct i2o_controller*,struct i2o_message*) ;
 int le32_to_cpu (int ) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_interruptible_timeout (int ,scalar_t__,unsigned long) ;
 int wq ;

int i2o_msg_post_wait_mem(struct i2o_controller *c, struct i2o_message *msg,
     unsigned long timeout, struct i2o_dma *dma)
{
 DECLARE_WAIT_QUEUE_HEAD_ONSTACK(wq);
 struct i2o_exec_wait *wait;
 static u32 tcntxt = 0x80000000;
 unsigned long flags;
 int rc = 0;

 wait = i2o_exec_wait_alloc();
 if (!wait) {
  i2o_msg_nop(c, msg);
  return -ENOMEM;
 }

 if (tcntxt == 0xffffffff)
  tcntxt = 0x80000000;

 if (dma)
  wait->dma = *dma;






 msg->u.s.icntxt = cpu_to_le32(i2o_exec_driver.context);
 wait->tcntxt = tcntxt++;
 msg->u.s.tcntxt = cpu_to_le32(wait->tcntxt);

 wait->wq = &wq;




 list_add(&wait->list, &i2o_exec_wait_list);





 i2o_msg_post(c, msg);

 wait_event_interruptible_timeout(wq, wait->complete, timeout * HZ);

 spin_lock_irqsave(&wait->lock, flags);

 wait->wq = ((void*)0);

 if (wait->complete)
  rc = le32_to_cpu(wait->msg->body[0]) >> 24;
 else {







  if (dma)
   dma->virt = ((void*)0);

  rc = -ETIMEDOUT;
 }

 spin_unlock_irqrestore(&wait->lock, flags);

 if (rc != -ETIMEDOUT) {
  i2o_flush_reply(c, wait->m);
  i2o_exec_wait_free(wait);
 }

 return rc;
}
