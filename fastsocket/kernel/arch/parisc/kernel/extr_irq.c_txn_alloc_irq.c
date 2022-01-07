
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_IRQ_BASE ;
 int CPU_IRQ_MAX ;
 scalar_t__ cpu_claim_irq (int,int *,int *) ;

int txn_alloc_irq(unsigned int bits_wide)
{
 int irq;


 for (irq = CPU_IRQ_BASE + 1; irq <= CPU_IRQ_MAX; irq++) {
  if (cpu_claim_irq(irq, ((void*)0), ((void*)0)) < 0)
   continue;
  if ((irq - CPU_IRQ_BASE) >= (1 << bits_wide))
   continue;
  return irq;
 }


 return -1;
}
