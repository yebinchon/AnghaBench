
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KM_BIO_SRC_IRQ ;
 int kunmap_atomic (void*,int ) ;
 int local_irq_restore (unsigned long) ;

__attribute__((used)) static void sdhci_kunmap_atomic(void *buffer, unsigned long *flags)
{
 kunmap_atomic(buffer, KM_BIO_SRC_IRQ);
 local_irq_restore(*flags);
}
