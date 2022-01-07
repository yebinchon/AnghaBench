
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvfc_host {TYPE_1__* host; int tasklet; int dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int host_lock; } ;


 int IRQ_HANDLED ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int tasklet_schedule (int *) ;
 int to_vio_dev (int ) ;
 int vio_disable_interrupts (int ) ;

__attribute__((used)) static irqreturn_t ibmvfc_interrupt(int irq, void *dev_instance)
{
 struct ibmvfc_host *vhost = (struct ibmvfc_host *)dev_instance;
 unsigned long flags;

 spin_lock_irqsave(vhost->host->host_lock, flags);
 vio_disable_interrupts(to_vio_dev(vhost->dev));
 tasklet_schedule(&vhost->tasklet);
 spin_unlock_irqrestore(vhost->host->host_lock, flags);
 return IRQ_HANDLED;
}
