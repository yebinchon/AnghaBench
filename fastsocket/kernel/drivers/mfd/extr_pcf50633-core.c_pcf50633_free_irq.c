
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcf50633 {int lock; TYPE_1__* irq_handler; } ;
struct TYPE_2__ {int * handler; } ;


 int EINVAL ;
 int PCF50633_NUM_IRQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int pcf50633_free_irq(struct pcf50633 *pcf, int irq)
{
 if (irq < 0 || irq > PCF50633_NUM_IRQ)
  return -EINVAL;

 mutex_lock(&pcf->lock);
 pcf->irq_handler[irq].handler = ((void*)0);
 mutex_unlock(&pcf->lock);

 return 0;
}
