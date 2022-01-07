
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mc13783 {int io_lock; TYPE_1__* irq_handler; } ;
struct TYPE_2__ {void (* handler ) (int,void*) ;void* data; } ;


 int EBUSY ;
 int EINVAL ;
 int MC13783_NUM_IRQ ;
 scalar_t__ WARN_ON (void (*) (int,void*)) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mc13783_register_irq(struct mc13783 *mc13783, int irq,
  void (*handler) (int, void *), void *data)
{
 if (irq < 0 || irq > MC13783_NUM_IRQ || !handler)
  return -EINVAL;

 if (WARN_ON(mc13783->irq_handler[irq].handler))
  return -EBUSY;

 mutex_lock(&mc13783->io_lock);
 mc13783->irq_handler[irq].handler = handler;
 mc13783->irq_handler[irq].data = data;
 mutex_unlock(&mc13783->io_lock);

 return 0;
}
