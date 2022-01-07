
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 scalar_t__ FIRST_IRQ ;
 int IGNORE_MASK ;
 int NBR_REGS ;
 int REG_RD_INT_VECT (int ,int ,int ,int) ;
 int REG_WR_INT_VECT (int ,int ,int ,int,int) ;
 scalar_t__ TIMER0_INTR_VECT ;
 int TIMER_MASK ;
 int do_IRQ (scalar_t__,struct pt_regs*) ;
 int intr_vect ;
 int irq_enter () ;
 int irq_exit () ;
 int * irq_regs ;
 int r_masked_vect ;
 int rw_mask ;
 int smp_processor_id () ;

void
crisv32_do_multiple(struct pt_regs* regs)
{
 int cpu;
 int mask;
 int masked[NBR_REGS];
 int bit;
 int i;

 cpu = smp_processor_id();




 irq_enter();

 for (i = 0; i < NBR_REGS; i++) {

  masked[i] = REG_RD_INT_VECT(intr_vect, irq_regs[cpu],
   r_masked_vect, i);


  mask = REG_RD_INT_VECT(intr_vect, irq_regs[cpu], rw_mask, i);
  mask &= ~masked[i];






  if ((i == 0) && (masked[0] & TIMER_MASK))
   mask |= TIMER_MASK;


  REG_WR_INT_VECT(intr_vect, irq_regs[cpu], rw_mask, i, mask);
  if ((i == 0) && (masked[i] & TIMER_MASK)) {
    masked[i] &= ~TIMER_MASK;
    do_IRQ(TIMER0_INTR_VECT, regs);
  }

 }







 for (i = 0; i < NBR_REGS; i++) {
  for (bit = 0; bit < 32; bit++) {
   if (masked[i] & (1 << bit))
    do_IRQ(bit + FIRST_IRQ + i*32, regs);
  }
 }


 for (i = 0; i < NBR_REGS; i++) {
  mask = REG_RD_INT_VECT(intr_vect, irq_regs[cpu], rw_mask, i);
  mask |= masked[i];
  REG_WR_INT_VECT(intr_vect, irq_regs[cpu], rw_mask, i, mask);
 }


 irq_exit();
}
