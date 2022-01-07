
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUFREQ_TRANSITION_NOTIFIER ;
 int X86_FEATURE_CONSTANT_TSC ;
 int boot_cpu_has (int ) ;
 int cpufreq_unregister_notifier (int *,int ) ;
 int kvm_guest_cbs ;
 int kvm_mmu_module_exit () ;
 int * kvm_x86_ops ;
 int kvmclock_cpu_notifier_block ;
 int kvmclock_cpufreq_notifier_block ;
 int perf_unregister_guest_info_callbacks (int *) ;
 int unregister_hotcpu_notifier (int *) ;

void kvm_arch_exit(void)
{
 perf_unregister_guest_info_callbacks(&kvm_guest_cbs);

 if (!boot_cpu_has(X86_FEATURE_CONSTANT_TSC))
  cpufreq_unregister_notifier(&kvmclock_cpufreq_notifier_block,
         CPUFREQ_TRANSITION_NOTIFIER);



 kvm_x86_ops = ((void*)0);
 kvm_mmu_module_exit();
}
