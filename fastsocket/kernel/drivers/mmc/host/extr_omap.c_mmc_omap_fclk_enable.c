
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_omap_host {unsigned int fclk_enabled; int clk_lock; int fclk; } ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mmc_omap_fclk_enable(struct mmc_omap_host *host, unsigned int enable)
{
 unsigned long flags;

 spin_lock_irqsave(&host->clk_lock, flags);
 if (host->fclk_enabled != enable) {
  host->fclk_enabled = enable;
  if (enable)
   clk_enable(host->fclk);
  else
   clk_disable(host->fclk);
 }
 spin_unlock_irqrestore(&host->clk_lock, flags);
}
