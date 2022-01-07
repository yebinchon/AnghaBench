
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 scalar_t__ kthread_should_stop () ;
 int msleep_interruptible (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_temp () ;
 int restore_regs () ;
 int setup_hardware () ;
 TYPE_1__ x ;

__attribute__((used)) static int control_loop(void *dummy)
{
 mutex_lock(&x.lock);
 setup_hardware();
 mutex_unlock(&x.lock);

 for (;;) {
  msleep_interruptible(8000);
  if (kthread_should_stop())
   break;

  mutex_lock(&x.lock);
  poll_temp();
  mutex_unlock(&x.lock);
 }

 mutex_lock(&x.lock);
 restore_regs();
 mutex_unlock(&x.lock);

 return 0;
}
