
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int CALL_FUNCTION_IPI ;
 int send_IPI_mask (struct cpumask const*,int ,int ) ;

void arch_send_call_function_ipi_mask(const struct cpumask *mask)
{
 send_IPI_mask(mask, CALL_FUNCTION_IPI, 0);
}
