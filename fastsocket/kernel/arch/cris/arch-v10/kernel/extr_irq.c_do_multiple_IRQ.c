
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned int IO_MASK (unsigned int*,int ) ;
 unsigned int IO_STATE (unsigned int*,int ,int ) ;
 unsigned int* R_VECT_MASK_CLR ;
 unsigned int* R_VECT_MASK_RD ;
 unsigned int* R_VECT_MASK_SET ;
 int active ;
 int dma0 ;
 int dma1 ;
 int do_IRQ (int,struct pt_regs*) ;
 int irq_enter () ;
 int irq_exit () ;
 int timer0 ;

void do_multiple_IRQ(struct pt_regs* regs)
{
 int bit;
 unsigned masked;
 unsigned mask;
 unsigned ethmask = 0;


 mask = masked = *R_VECT_MASK_RD;


 mask &= ~(IO_MASK(R_VECT_MASK_RD, timer0));





 if (mask &
     (IO_STATE(R_VECT_MASK_RD, dma0, active) |
      IO_STATE(R_VECT_MASK_RD, dma1, active))) {
  ethmask = (IO_MASK(R_VECT_MASK_RD, dma0) |
      IO_MASK(R_VECT_MASK_RD, dma1));
 }


 *R_VECT_MASK_CLR = (mask | ethmask);




 irq_enter();


 for (bit = 2; bit < 32; bit++) {
  if (masked & (1 << bit)) {
   do_IRQ(bit, regs);
  }
 }


 irq_exit();


 *R_VECT_MASK_SET = (masked | ethmask);
}
