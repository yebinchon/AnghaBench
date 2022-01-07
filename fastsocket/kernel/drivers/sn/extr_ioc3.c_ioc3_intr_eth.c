
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ioc3_driver_data {scalar_t__* active; int dual_irq; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {size_t id; int (* intr ) (TYPE_1__*,struct ioc3_driver_data*,int ) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 TYPE_1__* ioc3_ethernet ;
 int ioc3_submodules_lock ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,struct ioc3_driver_data*,int ) ;

__attribute__((used)) static irqreturn_t ioc3_intr_eth(int irq, void *arg)
{
 unsigned long flags;
 struct ioc3_driver_data *idd = (struct ioc3_driver_data *)arg;
 int handled = 1;

 if(!idd->dual_irq)
  return IRQ_NONE;
 read_lock_irqsave(&ioc3_submodules_lock, flags);
 if(ioc3_ethernet && idd->active[ioc3_ethernet->id]
    && ioc3_ethernet->intr)
  handled = handled && !ioc3_ethernet->intr(ioc3_ethernet, idd, 0);
 read_unlock_irqrestore(&ioc3_submodules_lock, flags);
 return handled?IRQ_HANDLED:IRQ_NONE;
}
