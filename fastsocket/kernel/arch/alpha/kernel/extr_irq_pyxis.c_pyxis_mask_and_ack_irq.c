
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long* vulp ;


 scalar_t__ PYXIS_INT_MASK ;
 scalar_t__ PYXIS_INT_REQ ;
 unsigned long cached_irq_mask ;
 int mb () ;
 int wmb () ;

__attribute__((used)) static void
pyxis_mask_and_ack_irq(unsigned int irq)
{
 unsigned long bit = 1UL << (irq - 16);
 unsigned long mask = cached_irq_mask &= ~bit;


 *(vulp)PYXIS_INT_MASK = mask;
 wmb();

 *(vulp)PYXIS_INT_REQ = bit;
 mb();

 *(vulp)PYXIS_INT_MASK;
}
