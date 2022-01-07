
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ene_device {int transmitter_mask; int hw_lock; } ;


 int ENE_GPIOFS1 ;
 int ENE_GPIOFS1_GPIO0D ;
 int ENE_GPIOFS8 ;
 int ENE_GPIOFS8_GPIO41 ;
 int ene_set_clear_reg_mask (struct ene_device*,int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ene_tx_set_transmitters(struct ene_device *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->hw_lock, flags);
 ene_set_clear_reg_mask(dev, ENE_GPIOFS8, ENE_GPIOFS8_GPIO41,
     !!(dev->transmitter_mask & 0x01));
 ene_set_clear_reg_mask(dev, ENE_GPIOFS1, ENE_GPIOFS1_GPIO0D,
     !!(dev->transmitter_mask & 0x02));
 spin_unlock_irqrestore(&dev->hw_lock, flags);
}
