
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ stale; } ;
typedef TYPE_1__ pcnet_dev_t ;
typedef scalar_t__ irqreturn_t ;


 scalar_t__ IRQ_HANDLED ;
 TYPE_1__* PRIV (struct net_device*) ;
 scalar_t__ ei_interrupt (int,void*) ;

__attribute__((used)) static irqreturn_t ei_irq_wrapper(int irq, void *dev_id)
{
    struct net_device *dev = dev_id;
    pcnet_dev_t *info;
    irqreturn_t ret = ei_interrupt(irq, dev_id);

    if (ret == IRQ_HANDLED) {
     info = PRIV(dev);
     info->stale = 0;
    }
    return ret;
}
