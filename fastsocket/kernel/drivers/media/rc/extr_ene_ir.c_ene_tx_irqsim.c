
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ene_device {int hw_lock; } ;


 int ene_tx_sample (struct ene_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ene_tx_irqsim(unsigned long data)
{
 struct ene_device *dev = (struct ene_device *)data;
 unsigned long flags;

 spin_lock_irqsave(&dev->hw_lock, flags);
 ene_tx_sample(dev);
 spin_unlock_irqrestore(&dev->hw_lock, flags);
}
