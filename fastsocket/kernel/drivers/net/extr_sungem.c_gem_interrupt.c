
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct gem {int lock; int napi; scalar_t__ status; scalar_t__ regs; int running; } ;
typedef int irqreturn_t ;


 scalar_t__ GREG_STAT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int __napi_schedule (int *) ;
 int gem_disable_ints (struct gem*) ;
 int napi_enable (int *) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct gem* netdev_priv (struct net_device*) ;
 scalar_t__ readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t gem_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct gem *gp = netdev_priv(dev);
 unsigned long flags;





 if (!gp->running)
  return IRQ_HANDLED;

 spin_lock_irqsave(&gp->lock, flags);

 if (napi_schedule_prep(&gp->napi)) {
  u32 gem_status = readl(gp->regs + GREG_STAT);

  if (gem_status == 0) {
   napi_enable(&gp->napi);
   spin_unlock_irqrestore(&gp->lock, flags);
   return IRQ_NONE;
  }
  gp->status = gem_status;
  gem_disable_ints(gp);
  __napi_schedule(&gp->napi);
 }

 spin_unlock_irqrestore(&gp->lock, flags);





 return IRQ_HANDLED;
}
