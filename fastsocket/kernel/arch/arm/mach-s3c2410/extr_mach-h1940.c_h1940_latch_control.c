
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H1940_LATCH ;
 int __raw_writel (unsigned int,int ) ;
 unsigned int latch_state ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void h1940_latch_control(unsigned int clear, unsigned int set)
{
 unsigned long flags;

 local_irq_save(flags);

 latch_state &= ~clear;
 latch_state |= set;

 __raw_writel(latch_state, H1940_LATCH);

 local_irq_restore(flags);
}
