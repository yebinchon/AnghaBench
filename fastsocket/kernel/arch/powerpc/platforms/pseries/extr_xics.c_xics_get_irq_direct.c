
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NO_IRQ ;
 unsigned int XICS_IRQ_SPURIOUS ;
 unsigned int direct_xirr_info_get () ;
 int direct_xirr_info_set (unsigned int) ;
 unsigned int irq_radix_revmap_lookup (int ,unsigned int) ;
 scalar_t__ likely (int) ;
 int xics_host ;
 int xics_mask_unknown_vec (unsigned int) ;
 unsigned int xics_xirr_vector (unsigned int) ;

__attribute__((used)) static unsigned int xics_get_irq_direct(void)
{
 unsigned int xirr = direct_xirr_info_get();
 unsigned int vec = xics_xirr_vector(xirr);
 unsigned int irq;

 if (vec == XICS_IRQ_SPURIOUS)
  return NO_IRQ;

 irq = irq_radix_revmap_lookup(xics_host, vec);
 if (likely(irq != NO_IRQ))
  return irq;


 xics_mask_unknown_vec(vec);


 direct_xirr_info_set(xirr);
 return NO_IRQ;
}
