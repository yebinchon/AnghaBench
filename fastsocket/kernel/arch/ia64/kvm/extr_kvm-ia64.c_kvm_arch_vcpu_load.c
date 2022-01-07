
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ht_active; } ;
struct kvm_vcpu {int cpu; TYPE_1__ arch; } ;


 int kvm_migrate_hlt_timer (struct kvm_vcpu*) ;

void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
{
 if (cpu != vcpu->cpu) {
  vcpu->cpu = cpu;
  if (vcpu->arch.ht_active)
   kvm_migrate_hlt_timer(vcpu);
 }
}
