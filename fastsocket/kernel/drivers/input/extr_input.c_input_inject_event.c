
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {struct input_dev* dev; } ;
struct input_dev {int event_lock; int grab; int evbit; } ;


 int EV_MAX ;
 int input_handle_event (struct input_dev*,unsigned int,unsigned int,int) ;
 scalar_t__ is_event_supported (unsigned int,int ,int ) ;
 struct input_handle* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void input_inject_event(struct input_handle *handle,
   unsigned int type, unsigned int code, int value)
{
 struct input_dev *dev = handle->dev;
 struct input_handle *grab;
 unsigned long flags;

 if (is_event_supported(type, dev->evbit, EV_MAX)) {
  spin_lock_irqsave(&dev->event_lock, flags);

  rcu_read_lock();
  grab = rcu_dereference(dev->grab);
  if (!grab || grab == handle)
   input_handle_event(dev, type, code, value);
  rcu_read_unlock();

  spin_unlock_irqrestore(&dev->event_lock, flags);
 }
}
