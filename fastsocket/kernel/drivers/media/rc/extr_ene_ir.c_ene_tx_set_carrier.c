
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ene_device {int tx_period; int tx_duty_cycle; int hw_lock; } ;


 int BUG_ON (int) ;
 int ENE_CIRCFG ;
 int ENE_CIRCFG_TX_CARR ;
 int ENE_CIRMOD_HPRD ;
 int ENE_CIRMOD_PRD ;
 int ENE_CIRMOD_PRD_POL ;
 int dbg (char*,int) ;
 int ene_set_clear_reg_mask (struct ene_device*,int ,int ,int) ;
 int ene_write_reg (struct ene_device*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ene_tx_set_carrier(struct ene_device *dev)
{
 u8 tx_puls_width;
 unsigned long flags;

 spin_lock_irqsave(&dev->hw_lock, flags);

 ene_set_clear_reg_mask(dev, ENE_CIRCFG,
  ENE_CIRCFG_TX_CARR, dev->tx_period > 0);

 if (!dev->tx_period)
  goto unlock;

 BUG_ON(dev->tx_duty_cycle >= 100 || dev->tx_duty_cycle <= 0);

 tx_puls_width = dev->tx_period / (100 / dev->tx_duty_cycle);

 if (!tx_puls_width)
  tx_puls_width = 1;

 dbg("TX: pulse distance = %d * 500 ns", dev->tx_period);
 dbg("TX: pulse width = %d * 500 ns", tx_puls_width);

 ene_write_reg(dev, ENE_CIRMOD_PRD, dev->tx_period | ENE_CIRMOD_PRD_POL);
 ene_write_reg(dev, ENE_CIRMOD_HPRD, tx_puls_width);
unlock:
 spin_unlock_irqrestore(&dev->hw_lock, flags);
}
