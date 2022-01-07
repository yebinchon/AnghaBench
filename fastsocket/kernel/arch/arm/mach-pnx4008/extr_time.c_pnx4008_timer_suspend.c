
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMCLK_CTRL_REG ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 int timclk_ctrl_reg_save ;

void pnx4008_timer_suspend(void)
{
 timclk_ctrl_reg_save = __raw_readl(TIMCLK_CTRL_REG);
 __raw_writel(0, TIMCLK_CTRL_REG);
}
