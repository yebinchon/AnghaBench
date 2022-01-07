
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ scan1; scalar_t__ scan2; } ;
struct saa7134_dev {TYPE_1__ thread; } ;


 int TASK_INTERRUPTIBLE ;
 int kthread_should_stop () ;
 int msecs_to_jiffies (int) ;
 int schedule () ;
 int schedule_timeout_interruptible (int ) ;
 int set_current_state (int ) ;

__attribute__((used)) static int tvaudio_sleep(struct saa7134_dev *dev, int timeout)
{
 if (dev->thread.scan1 == dev->thread.scan2 &&
     !kthread_should_stop()) {
  if (timeout < 0) {
   set_current_state(TASK_INTERRUPTIBLE);
   schedule();
  } else {
   schedule_timeout_interruptible
      (msecs_to_jiffies(timeout));
  }
 }
 return dev->thread.scan1 != dev->thread.scan2;
}
