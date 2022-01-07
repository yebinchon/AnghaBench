
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int kvm_mmu_zap_all (struct kvm*) ;
 int kvm_reload_remote_mmus (struct kvm*) ;

void kvm_arch_flush_shadow(struct kvm *kvm)
{
 kvm_mmu_zap_all(kvm);
 kvm_reload_remote_mmus(kvm);
}
