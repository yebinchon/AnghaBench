
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hwirq; } ;
struct TYPE_3__ {int sc_simask; } ;


 TYPE_2__* irq_map ;
 int out_be32 (int *,int) ;
 int* ppc_cached_irq_mask ;
 TYPE_1__* siu_reg ;

__attribute__((used)) static void mpc8xx_end_irq(unsigned int virq)
{
 int bit, word;
 unsigned int irq_nr = (unsigned int)irq_map[virq].hwirq;

 bit = irq_nr & 0x1f;
 word = irq_nr >> 5;

 ppc_cached_irq_mask[word] |= (1 << (31-bit));
 out_be32(&siu_reg->sc_simask, ppc_cached_irq_mask[word]);
}
