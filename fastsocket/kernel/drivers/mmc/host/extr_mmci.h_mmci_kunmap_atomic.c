
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {int dummy; } ;


 int KM_BIO_SRC_IRQ ;
 int kunmap_atomic (void*,int ) ;
 int local_irq_restore (unsigned long) ;

__attribute__((used)) static inline void mmci_kunmap_atomic(struct mmci_host *host, void *buffer, unsigned long *flags)
{
 kunmap_atomic(buffer, KM_BIO_SRC_IRQ);
 local_irq_restore(*flags);
}
