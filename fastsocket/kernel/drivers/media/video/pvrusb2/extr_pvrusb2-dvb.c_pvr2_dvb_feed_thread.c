
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TASK_INTERRUPTIBLE ;
 int kthread_should_stop () ;
 int pvr2_dvb_feed_func (void*) ;
 int schedule () ;
 int set_current_state (int ) ;

__attribute__((used)) static int pvr2_dvb_feed_thread(void *data)
{
 int stat = pvr2_dvb_feed_func(data);

 while (!kthread_should_stop()) {
  set_current_state(TASK_INTERRUPTIBLE);
  schedule();
 }
 return stat;
}
