
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 scalar_t__ GT641XX_IRQ_BASE ;
 int GT_INTRCAUSE_OFS ;
 int GT_INTRMASK_OFS ;
 unsigned int GT_READ (int ) ;
 int atomic_inc (int *) ;
 int do_IRQ (scalar_t__) ;
 int irq_err_count ;

void gt641xx_irq_dispatch(void)
{
 u32 cause, mask;
 int i;

 cause = GT_READ(GT_INTRCAUSE_OFS);
 mask = GT_READ(GT_INTRMASK_OFS);
 cause &= mask;






 for (i = 1; i < 30; i++) {
  if (cause & (1U << i)) {
   do_IRQ(GT641XX_IRQ_BASE + i);
   return;
  }
 }

 atomic_inc(&irq_err_count);
}
