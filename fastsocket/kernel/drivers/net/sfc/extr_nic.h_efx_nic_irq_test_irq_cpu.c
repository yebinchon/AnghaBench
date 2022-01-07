
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int last_irq_cpu; } ;


 int ACCESS_ONCE (int ) ;

__attribute__((used)) static inline int efx_nic_irq_test_irq_cpu(struct efx_nic *efx)
{
 return ACCESS_ONCE(efx->last_irq_cpu);
}
