
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMCLK_CTRL_REG ;
 int __raw_writel (int ,int ) ;
 int timclk_ctrl_reg_save ;

void pnx4008_timer_resume(void)
{
 __raw_writel(timclk_ctrl_reg_save, TIMCLK_CTRL_REG);
}
