
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ic_simrh; } ;


 TYPE_1__* cpm2_intctl ;
 int* irq_to_siubit ;
 int* irq_to_siureg ;
 int out_be32 (int *,int) ;
 int* ppc_cached_irq_mask ;
 unsigned int virq_to_hw (unsigned int) ;

__attribute__((used)) static void cpm2_mask_irq(unsigned int virq)
{
 int bit, word;
 unsigned int irq_nr = virq_to_hw(virq);

 bit = irq_to_siubit[irq_nr];
 word = irq_to_siureg[irq_nr];

 ppc_cached_irq_mask[word] &= ~(1 << bit);
 out_be32(&cpm2_intctl->ic_simrh + word, ppc_cached_irq_mask[word]);
}
