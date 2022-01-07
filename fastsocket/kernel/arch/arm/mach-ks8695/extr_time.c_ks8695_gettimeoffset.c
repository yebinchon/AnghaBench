
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CLOCK_TICK_RATE ;
 unsigned long HZ ;
 scalar_t__ KS8695_INTST ;
 int KS8695_IRQ_TIMER1 ;
 scalar_t__ KS8695_IRQ_VA ;
 scalar_t__ KS8695_T1PD ;
 scalar_t__ KS8695_T1TC ;
 scalar_t__ KS8695_TMR_VA ;
 unsigned long LATCH ;
 int __raw_readl (scalar_t__) ;
 int tick_nsec ;

__attribute__((used)) static unsigned long ks8695_gettimeoffset (void)
{
 unsigned long elapsed, tick2, intpending;







 elapsed = __raw_readl(KS8695_TMR_VA + KS8695_T1TC) + __raw_readl(KS8695_TMR_VA + KS8695_T1PD);
 do {
  tick2 = elapsed;
  intpending = __raw_readl(KS8695_IRQ_VA + KS8695_INTST) & (1 << KS8695_IRQ_TIMER1);
  elapsed = __raw_readl(KS8695_TMR_VA + KS8695_T1TC) + __raw_readl(KS8695_TMR_VA + KS8695_T1PD);
 } while (elapsed > tick2);


 elapsed = (CLOCK_TICK_RATE / HZ) - elapsed;


 if (intpending)
  elapsed += (CLOCK_TICK_RATE / HZ);


 return (unsigned long)(elapsed * (tick_nsec / 1000)) / LATCH;
}
