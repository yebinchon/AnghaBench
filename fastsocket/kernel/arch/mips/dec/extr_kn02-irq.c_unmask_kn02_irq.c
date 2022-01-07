
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ CKSEG1ADDR (scalar_t__) ;
 scalar_t__ KN02_CSR ;
 scalar_t__ KN02_SLOT_BASE ;
 int cached_kn02_csr ;
 unsigned int kn02_irq_base ;

__attribute__((used)) static inline void unmask_kn02_irq(unsigned int irq)
{
 volatile u32 *csr = (volatile u32 *)CKSEG1ADDR(KN02_SLOT_BASE +
             KN02_CSR);

 cached_kn02_csr |= (1 << (irq - kn02_irq_base + 16));
 *csr = cached_kn02_csr;
}
