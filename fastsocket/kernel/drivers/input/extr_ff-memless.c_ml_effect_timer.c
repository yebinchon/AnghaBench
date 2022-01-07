
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ml_device {int dummy; } ;
struct input_dev {int event_lock; TYPE_1__* ff; } ;
struct TYPE_2__ {struct ml_device* private; } ;


 int debug (char*) ;
 int ml_play_effects (struct ml_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ml_effect_timer(unsigned long timer_data)
{
 struct input_dev *dev = (struct input_dev *)timer_data;
 struct ml_device *ml = dev->ff->private;
 unsigned long flags;

 debug("timer: updating effects");

 spin_lock_irqsave(&dev->event_lock, flags);
 ml_play_effects(ml);
 spin_unlock_irqrestore(&dev->event_lock, flags);
}
