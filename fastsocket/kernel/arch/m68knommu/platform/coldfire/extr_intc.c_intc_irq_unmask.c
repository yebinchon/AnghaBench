
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mcf_clrimr (scalar_t__) ;
 scalar_t__* mcf_irq2imr ;

__attribute__((used)) static void intc_irq_unmask(unsigned int irq)
{
 if (mcf_irq2imr[irq])
  mcf_clrimr(mcf_irq2imr[irq]);
}
