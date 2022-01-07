
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int sg_ptr; } ;


 int KM_BIO_SRC_IRQ ;
 int kunmap_atomic (int ,int ) ;
 int local_irq_restore (unsigned long) ;
 int sg_page (int ) ;

__attribute__((used)) static inline void tmio_mmc_kunmap_atomic(struct tmio_mmc_host *host,
 unsigned long *flags)
{
 kunmap_atomic(sg_page(host->sg_ptr), KM_BIO_SRC_IRQ);
 local_irq_restore(*flags);
}
