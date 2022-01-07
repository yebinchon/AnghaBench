
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_hw {int lock; int ipac; } ;
typedef int irqreturn_t ;


 int irqloops ;
 int mISDNipac_irq (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t
gazel_irq(int intno, void *dev_id)
{
 struct inf_hw *hw = dev_id;
 irqreturn_t ret;

 spin_lock(&hw->lock);
 ret = mISDNipac_irq(&hw->ipac, irqloops);
 spin_unlock(&hw->lock);
 return ret;
}
