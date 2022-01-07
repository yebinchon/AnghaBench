
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_KVM_STEAL_TIME ;
 int has_steal_clock ;
 int wrmsr (int ,int ,int ) ;

void kvm_disable_steal_time(void)
{
 if (!has_steal_clock)
  return;

 wrmsr(MSR_KVM_STEAL_TIME, 0, 0);
}
