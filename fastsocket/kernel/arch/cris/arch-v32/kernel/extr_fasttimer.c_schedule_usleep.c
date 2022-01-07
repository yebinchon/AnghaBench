
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct fast_timer {int dummy; } ;


 int D1 (int ) ;
 int fast_timer_pending (struct fast_timer*) ;
 int init_waitqueue_head (int *) ;
 int printk (char*,unsigned long) ;
 int start_one_shot_timer (struct fast_timer*,int ,unsigned long,unsigned long,char*) ;
 int wait_event (int ,int) ;
 int wake_up_func ;

void schedule_usleep(unsigned long us)
{
  struct fast_timer t;
  wait_queue_head_t sleep_wait;
  init_waitqueue_head(&sleep_wait);

  D1(printk("schedule_usleep(%d)\n", us));
  start_one_shot_timer(&t, wake_up_func, (unsigned long)&sleep_wait, us,
                       "usleep");


 wait_event(sleep_wait, !fast_timer_pending(&t));

  D1(printk("done schedule_usleep(%d)\n", us));
}
