
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int wait; int queue; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EINTR ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int dm_unplug_all (int ) ;
 int io_schedule () ;
 int md_in_flight (struct mapped_device*) ;
 int remove_wait_queue (int *,int *) ;
 int set_current_state (int) ;
 scalar_t__ signal_pending (int ) ;
 int wait ;

__attribute__((used)) static int dm_wait_for_completion(struct mapped_device *md, int interruptible)
{
 int r = 0;
 DECLARE_WAITQUEUE(wait, current);

 dm_unplug_all(md->queue);

 add_wait_queue(&md->wait, &wait);

 while (1) {
  set_current_state(interruptible);

  if (!md_in_flight(md))
   break;

  if (interruptible == TASK_INTERRUPTIBLE &&
      signal_pending(current)) {
   r = -EINTR;
   break;
  }

  io_schedule();
 }
 set_current_state(TASK_RUNNING);

 remove_wait_queue(&md->wait, &wait);

 return r;
}
