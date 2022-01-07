
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct gc {int mutex; int timer; TYPE_1__* pd; int used; } ;
struct TYPE_2__ {int port; } ;


 scalar_t__ GC_REFRESH_TIME ;
 struct gc* input_get_drvdata (struct input_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int parport_claim (TYPE_1__*) ;
 int parport_write_control (int ,int) ;

__attribute__((used)) static int gc_open(struct input_dev *dev)
{
 struct gc *gc = input_get_drvdata(dev);
 int err;

 err = mutex_lock_interruptible(&gc->mutex);
 if (err)
  return err;

 if (!gc->used++) {
  parport_claim(gc->pd);
  parport_write_control(gc->pd->port, 0x04);
  mod_timer(&gc->timer, jiffies + GC_REFRESH_TIME);
 }

 mutex_unlock(&gc->mutex);
 return 0;
}
