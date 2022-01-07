
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int free_buffer_wait; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int dm_bufio_io_schedule (struct dm_bufio_client*) ;
 int dm_bufio_lock (struct dm_bufio_client*) ;
 int dm_bufio_unlock (struct dm_bufio_client*) ;
 int remove_wait_queue (int *,int *) ;
 int set_task_state (int ,int ) ;
 int wait ;

__attribute__((used)) static void __wait_for_free_buffer(struct dm_bufio_client *c)
{
 DECLARE_WAITQUEUE(wait, current);

 add_wait_queue(&c->free_buffer_wait, &wait);
 set_task_state(current, TASK_UNINTERRUPTIBLE);
 dm_bufio_unlock(c);

 dm_bufio_io_schedule(c);

 set_task_state(current, TASK_RUNNING);
 remove_wait_queue(&c->free_buffer_wait, &wait);

 dm_bufio_lock(c);
}
