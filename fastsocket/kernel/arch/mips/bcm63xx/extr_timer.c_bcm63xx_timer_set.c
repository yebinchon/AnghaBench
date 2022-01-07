
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BCM63XX_TIMER_COUNT ;
 int EINVAL ;
 int TIMER_CTL_COUNTDOWN_MASK ;
 int TIMER_CTL_MONOTONIC_MASK ;
 int TIMER_CTLx_REG (int) ;
 int bcm63xx_timer_countdown (unsigned int) ;
 int bcm_timer_readl (int ) ;
 int bcm_timer_writel (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_reg_lock ;

int bcm63xx_timer_set(int id, int monotonic, unsigned int countdown_us)
{
 u32 reg, countdown;
 unsigned long flags;

 if (id >= BCM63XX_TIMER_COUNT)
  return -EINVAL;

 countdown = bcm63xx_timer_countdown(countdown_us);
 if (countdown & ~TIMER_CTL_COUNTDOWN_MASK)
  return -EINVAL;

 spin_lock_irqsave(&timer_reg_lock, flags);
 reg = bcm_timer_readl(TIMER_CTLx_REG(id));

 if (monotonic)
  reg &= ~TIMER_CTL_MONOTONIC_MASK;
 else
  reg |= TIMER_CTL_MONOTONIC_MASK;

 reg &= ~TIMER_CTL_COUNTDOWN_MASK;
 reg |= countdown;
 bcm_timer_writel(reg, TIMER_CTLx_REG(id));

 spin_unlock_irqrestore(&timer_reg_lock, flags);
 return 0;
}
