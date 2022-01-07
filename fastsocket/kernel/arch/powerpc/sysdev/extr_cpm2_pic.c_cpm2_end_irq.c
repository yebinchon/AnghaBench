
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ic_simrh; } ;
struct TYPE_3__ {int status; scalar_t__ action; } ;


 int IRQ_DISABLED ;
 int IRQ_INPROGRESS ;
 TYPE_2__* cpm2_intctl ;
 TYPE_1__* irq_desc ;
 int* irq_to_siubit ;
 int* irq_to_siureg ;
 int mb () ;
 int out_be32 (int *,int) ;
 int* ppc_cached_irq_mask ;
 unsigned int virq_to_hw (unsigned int) ;

__attribute__((used)) static void cpm2_end_irq(unsigned int virq)
{
 int bit, word;
 unsigned int irq_nr = virq_to_hw(virq);

 if (!(irq_desc[irq_nr].status & (IRQ_DISABLED|IRQ_INPROGRESS))
   && irq_desc[irq_nr].action) {

  bit = irq_to_siubit[irq_nr];
  word = irq_to_siureg[irq_nr];

  ppc_cached_irq_mask[word] |= 1 << bit;
  out_be32(&cpm2_intctl->ic_simrh + word, ppc_cached_irq_mask[word]);





  mb();
 }
}
