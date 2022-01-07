
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mc13783 {int io_lock; TYPE_1__* irq_handler; } ;
struct TYPE_2__ {int * handler; } ;


 int EINVAL ;
 int MC13783_NUM_IRQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mc13783_free_irq(struct mc13783 *mc13783, int irq)
{
 if (irq < 0 || irq > MC13783_NUM_IRQ)
  return -EINVAL;

 mutex_lock(&mc13783->io_lock);
 mc13783->irq_handler[irq].handler = ((void*)0);
 mutex_unlock(&mc13783->io_lock);

 return 0;
}
