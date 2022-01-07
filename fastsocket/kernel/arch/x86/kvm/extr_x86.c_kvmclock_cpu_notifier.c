
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;





 int NOTIFY_OK ;
 int smp_call_function_single (unsigned int,int ,int *,int) ;
 int tsc_bad ;
 int tsc_khz_changed ;

__attribute__((used)) static int kvmclock_cpu_notifier(struct notifier_block *nfb,
     unsigned long action, void *hcpu)
{
 unsigned int cpu = (unsigned long)hcpu;

 switch (action) {
  case 128:
  case 130:
   smp_call_function_single(cpu, tsc_khz_changed, ((void*)0), 1);
   break;
  case 129:
   smp_call_function_single(cpu, tsc_bad, ((void*)0), 1);
   break;
 }
 return NOTIFY_OK;
}
