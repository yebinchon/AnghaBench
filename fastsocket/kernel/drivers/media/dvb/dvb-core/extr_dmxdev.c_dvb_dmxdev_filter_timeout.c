
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int queue; int error; } ;
struct dmxdev_filter {TYPE_2__ buffer; TYPE_1__* dev; int state; } ;
struct TYPE_3__ {int lock; } ;


 int DMXDEV_STATE_TIMEDOUT ;
 int ETIMEDOUT ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void dvb_dmxdev_filter_timeout(unsigned long data)
{
 struct dmxdev_filter *dmxdevfilter = (struct dmxdev_filter *)data;

 dmxdevfilter->buffer.error = -ETIMEDOUT;
 spin_lock_irq(&dmxdevfilter->dev->lock);
 dmxdevfilter->state = DMXDEV_STATE_TIMEDOUT;
 spin_unlock_irq(&dmxdevfilter->dev->lock);
 wake_up(&dmxdevfilter->buffer.queue);
}
