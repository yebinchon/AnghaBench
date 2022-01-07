
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpumask {int dummy; } ;
typedef int cpumask_var_t ;
struct TYPE_2__ {int (* send_IPI_mask ) (struct cpumask const*,int ) ;int (* send_IPI_allbutself ) (int ) ;} ;


 int CALL_FUNCTION_VECTOR ;
 int GFP_ATOMIC ;
 int alloc_cpumask_var (int *,int ) ;
 TYPE_1__* apic ;
 int cpu_callout_mask ;
 struct cpumask const* cpu_online_mask ;
 int cpumask_clear_cpu (int ,int ) ;
 int cpumask_copy (int ,struct cpumask const*) ;
 scalar_t__ cpumask_equal (struct cpumask const*,int ) ;
 int free_cpumask_var (int ) ;
 int smp_processor_id () ;
 int stub1 (struct cpumask const*,int ) ;
 int stub2 (int ) ;
 int stub3 (struct cpumask const*,int ) ;

void native_send_call_func_ipi(const struct cpumask *mask)
{
 cpumask_var_t allbutself;

 if (!alloc_cpumask_var(&allbutself, GFP_ATOMIC)) {
  apic->send_IPI_mask(mask, CALL_FUNCTION_VECTOR);
  return;
 }

 cpumask_copy(allbutself, cpu_online_mask);
 cpumask_clear_cpu(smp_processor_id(), allbutself);

 if (cpumask_equal(mask, allbutself) &&
     cpumask_equal(cpu_online_mask, cpu_callout_mask))
  apic->send_IPI_allbutself(CALL_FUNCTION_VECTOR);
 else
  apic->send_IPI_mask(mask, CALL_FUNCTION_VECTOR);

 free_cpumask_var(allbutself);
}
