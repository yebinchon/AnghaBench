
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int kvm_free_all_assigned_devices (struct kvm*) ;
 int kvm_free_pit (struct kvm*) ;

void kvm_arch_sync_events(struct kvm *kvm)
{
 kvm_free_all_assigned_devices(kvm);
 kvm_free_pit(kvm);
}
