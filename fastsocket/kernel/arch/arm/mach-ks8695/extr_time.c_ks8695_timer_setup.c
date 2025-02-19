
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CLOCK_TICK_RATE ;
 unsigned long HZ ;
 scalar_t__ KS8695_T1PD ;
 scalar_t__ KS8695_T1TC ;
 scalar_t__ KS8695_TMCON ;
 scalar_t__ KS8695_TMR_VA ;
 unsigned long TMCON_T1EN ;
 unsigned long __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void ks8695_timer_setup(void)
{
 unsigned long tmout = CLOCK_TICK_RATE / HZ;
 unsigned long tmcon;


 tmcon = __raw_readl(KS8695_TMR_VA + KS8695_TMCON);
 __raw_writel(tmcon & ~TMCON_T1EN, KS8695_TMR_VA + KS8695_TMCON);

 __raw_writel(tmout / 2, KS8695_TMR_VA + KS8695_T1TC);
 __raw_writel(tmout / 2, KS8695_TMR_VA + KS8695_T1PD);


 __raw_writel(tmcon | TMCON_T1EN, KS8695_TMR_VA + KS8695_TMCON);
}
