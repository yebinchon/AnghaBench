
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BCM63XX_TIMER_COUNT ;
 int EINVAL ;
 int TIMER_CTL_ENABLE_MASK ;
 int TIMER_CTLx_REG (int) ;
 int TIMER_IRQSTAT_REG ;
 int TIMER_IRQSTAT_TIMER_IR_EN (int) ;
 int bcm_timer_readl (int ) ;
 int bcm_timer_writel (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_reg_lock ;

int bcm63xx_timer_enable(int id)
{
 u32 reg;
 unsigned long flags;

 if (id >= BCM63XX_TIMER_COUNT)
  return -EINVAL;

 spin_lock_irqsave(&timer_reg_lock, flags);

 reg = bcm_timer_readl(TIMER_CTLx_REG(id));
 reg |= TIMER_CTL_ENABLE_MASK;
 bcm_timer_writel(reg, TIMER_CTLx_REG(id));

 reg = bcm_timer_readl(TIMER_IRQSTAT_REG);
 reg |= TIMER_IRQSTAT_TIMER_IR_EN(id);
 bcm_timer_writel(reg, TIMER_IRQSTAT_REG);

 spin_unlock_irqrestore(&timer_reg_lock, flags);
 return 0;
}
