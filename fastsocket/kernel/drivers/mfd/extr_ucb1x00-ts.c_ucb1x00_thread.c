
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00_ts {int * rtask; int irq_wait; scalar_t__ restart; int ucb; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int HZ ;
 long MAX_SCHEDULE_TIMEOUT ;
 int TASK_INTERRUPTIBLE ;
 int UCB_FALLING ;
 int UCB_IRQ_TSPX ;
 int UCB_RISING ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int kthread_should_stop () ;
 scalar_t__ machine_is_collie () ;
 int msleep (int) ;
 int remove_wait_queue (int *,int *) ;
 int schedule_timeout (long) ;
 int set_current_state (int ) ;
 int set_freezable () ;
 int try_to_freeze () ;
 int ucb1x00_adc_disable (int ) ;
 int ucb1x00_adc_enable (int ) ;
 int ucb1x00_disable (int ) ;
 int ucb1x00_enable (int ) ;
 int ucb1x00_enable_irq (int ,int ,int ) ;
 int ucb1x00_ts_event_release (struct ucb1x00_ts*) ;
 int ucb1x00_ts_evt_add (struct ucb1x00_ts*,unsigned int,unsigned int,unsigned int) ;
 int ucb1x00_ts_mode_int (struct ucb1x00_ts*) ;
 scalar_t__ ucb1x00_ts_pen_down (struct ucb1x00_ts*) ;
 unsigned int ucb1x00_ts_read_pressure (struct ucb1x00_ts*) ;
 unsigned int ucb1x00_ts_read_xpos (struct ucb1x00_ts*) ;
 unsigned int ucb1x00_ts_read_ypos (struct ucb1x00_ts*) ;
 int wait ;

__attribute__((used)) static int ucb1x00_thread(void *_ts)
{
 struct ucb1x00_ts *ts = _ts;
 DECLARE_WAITQUEUE(wait, current);
 int valid = 0;

 set_freezable();
 add_wait_queue(&ts->irq_wait, &wait);
 while (!kthread_should_stop()) {
  unsigned int x, y, p;
  signed long timeout;

  ts->restart = 0;

  ucb1x00_adc_enable(ts->ucb);

  x = ucb1x00_ts_read_xpos(ts);
  y = ucb1x00_ts_read_ypos(ts);
  p = ucb1x00_ts_read_pressure(ts);




  ucb1x00_ts_mode_int(ts);
  ucb1x00_adc_disable(ts->ucb);

  msleep(10);

  ucb1x00_enable(ts->ucb);


  if (ucb1x00_ts_pen_down(ts)) {
   set_current_state(TASK_INTERRUPTIBLE);

   ucb1x00_enable_irq(ts->ucb, UCB_IRQ_TSPX, machine_is_collie() ? UCB_RISING : UCB_FALLING);
   ucb1x00_disable(ts->ucb);





   if (valid) {
    ucb1x00_ts_event_release(ts);
    valid = 0;
   }

   timeout = MAX_SCHEDULE_TIMEOUT;
  } else {
   ucb1x00_disable(ts->ucb);






   if (!ts->restart) {
    ucb1x00_ts_evt_add(ts, p, x, y);
    valid = 1;
   }

   set_current_state(TASK_INTERRUPTIBLE);
   timeout = HZ / 100;
  }

  try_to_freeze();

  schedule_timeout(timeout);
 }

 remove_wait_queue(&ts->irq_wait, &wait);

 ts->rtask = ((void*)0);
 return 0;
}
