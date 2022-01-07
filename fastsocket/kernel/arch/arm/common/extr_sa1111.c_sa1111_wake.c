
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111 {int lock; scalar_t__ base; int clk; } ;


 scalar_t__ SA1111_SKCR ;
 scalar_t__ SA1111_SKPCR ;
 unsigned long SKCR_OE_EN ;
 unsigned long SKCR_PLL_BYPASS ;
 unsigned long SKCR_RCLKEN ;
 unsigned long SKCR_RDYEN ;
 unsigned long SKCR_VCO_OFF ;
 int clk_enable (int ) ;
 unsigned long sa1111_readl (scalar_t__) ;
 int sa1111_writel (unsigned long,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void sa1111_wake(struct sa1111 *sachip)
{
 unsigned long flags, r;

 spin_lock_irqsave(&sachip->lock, flags);

 clk_enable(sachip->clk);




 r = sa1111_readl(sachip->base + SA1111_SKCR);
 r &= ~SKCR_VCO_OFF;
 sa1111_writel(r, sachip->base + SA1111_SKCR);
 r |= SKCR_PLL_BYPASS | SKCR_OE_EN;
 sa1111_writel(r, sachip->base + SA1111_SKCR);





 udelay(100);




 r |= SKCR_RCLKEN | SKCR_RDYEN;
 sa1111_writel(r, sachip->base + SA1111_SKCR);





 udelay(1);




 sa1111_writel(0, sachip->base + SA1111_SKPCR);

 spin_unlock_irqrestore(&sachip->lock, flags);
}
