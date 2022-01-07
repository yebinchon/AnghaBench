
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 unsigned int IRQ_BASE_MB93493 ;
 int IRQ_ROUTING ;
 void* __addr_MB93493_IQSR (int) ;
 int readl (void volatile*) ;
 int writel (int,void volatile*) ;

__attribute__((used)) static void frv_mb93493_unmask(unsigned int irq)
{
 uint32_t iqsr;
 volatile void *piqsr;

 if (IRQ_ROUTING & (1 << (irq - IRQ_BASE_MB93493)))
  piqsr = __addr_MB93493_IQSR(1);
 else
  piqsr = __addr_MB93493_IQSR(0);

 iqsr = readl(piqsr);
 iqsr |= 1 << (irq - IRQ_BASE_MB93493 + 16);
 writel(iqsr, piqsr);
}
