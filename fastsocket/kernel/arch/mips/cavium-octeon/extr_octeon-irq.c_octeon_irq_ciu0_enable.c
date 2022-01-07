
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 int CVMX_CIU_INTX_EN0 (int) ;
 unsigned int OCTEON_IRQ_WORKQ0 ;
 int cvmx_get_core_num () ;
 unsigned long long cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,unsigned long long) ;
 int octeon_irq_ciu0_rwlock ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void octeon_irq_ciu0_enable(unsigned int irq)
{
 int coreid = cvmx_get_core_num();
 unsigned long flags;
 uint64_t en0;
 int bit = irq - OCTEON_IRQ_WORKQ0;
 read_lock_irqsave(&octeon_irq_ciu0_rwlock, flags);
 en0 = cvmx_read_csr(CVMX_CIU_INTX_EN0(coreid * 2));
 en0 |= 1ull << bit;
 cvmx_write_csr(CVMX_CIU_INTX_EN0(coreid * 2), en0);
 cvmx_read_csr(CVMX_CIU_INTX_EN0(coreid * 2));
 read_unlock_irqrestore(&octeon_irq_ciu0_rwlock, flags);
}
