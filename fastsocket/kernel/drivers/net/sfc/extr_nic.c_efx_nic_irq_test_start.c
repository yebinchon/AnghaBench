
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int last_irq_cpu; } ;


 int efx_nic_interrupts (struct efx_nic*,int,int) ;
 int smp_wmb () ;

void efx_nic_irq_test_start(struct efx_nic *efx)
{
 efx->last_irq_cpu = -1;
 smp_wmb();
 efx_nic_interrupts(efx, 1, 1);
}
