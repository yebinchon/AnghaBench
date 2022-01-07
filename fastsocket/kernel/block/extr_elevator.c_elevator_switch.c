
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct elevator_queue* elevator; int queue_lock; } ;
struct elevator_type {int dummy; } ;
struct elevator_queue {TYPE_1__* elevator_type; scalar_t__ registered; int kobj; } ;
struct TYPE_2__ {int elevator_name; } ;


 int ENOMEM ;
 int __elv_unregister_queue (struct elevator_queue*) ;
 int blk_add_trace_msg (struct request_queue*,char*,int ) ;
 struct elevator_queue* elevator_alloc (struct request_queue*,struct elevator_type*) ;
 int elevator_attach (struct request_queue*,struct elevator_queue*,void*) ;
 int elevator_exit (struct elevator_queue*) ;
 void* elevator_init_queue (struct request_queue*,struct elevator_queue*) ;
 int elv_quiesce_end (struct request_queue*) ;
 int elv_quiesce_start (struct request_queue*) ;
 int elv_register_queue (struct request_queue*) ;
 int kobject_put (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int elevator_switch(struct request_queue *q, struct elevator_type *new_e)
{
 struct elevator_queue *old_elevator, *e;
 void *data;
 int err;




 e = elevator_alloc(q, new_e);
 if (!e)
  return -ENOMEM;

 data = elevator_init_queue(q, e);
 if (!data) {
  kobject_put(&e->kobj);
  return -ENOMEM;
 }




 elv_quiesce_start(q);




 old_elevator = q->elevator;




 spin_lock_irq(q->queue_lock);
 elevator_attach(q, e, data);
 spin_unlock_irq(q->queue_lock);

 if (old_elevator->registered) {
  __elv_unregister_queue(old_elevator);

  err = elv_register_queue(q);
  if (err)
   goto fail_register;
 }




 elevator_exit(old_elevator);
 elv_quiesce_end(q);

 blk_add_trace_msg(q, "elv switch: %s", e->elevator_type->elevator_name);

 return 0;

fail_register:




 elevator_exit(e);
 q->elevator = old_elevator;
 elv_register_queue(q);
 elv_quiesce_end(q);

 return err;
}
