
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ioc3_driver_data {int gpio_lock; TYPE_1__* vma; } ;
struct TYPE_2__ {int gpcr_s; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned int,int *) ;

void ioc3_gpcr_set(struct ioc3_driver_data *idd, unsigned int val)
{
 unsigned long flags;
 spin_lock_irqsave(&idd->gpio_lock, flags);
 writel(val, &idd->vma->gpcr_s);
 spin_unlock_irqrestore(&idd->gpio_lock, flags);
}
