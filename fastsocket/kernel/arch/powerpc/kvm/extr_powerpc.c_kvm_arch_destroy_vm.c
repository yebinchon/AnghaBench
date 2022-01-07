
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int srcu; } ;


 int cleanup_srcu_struct (int *) ;
 int kfree (struct kvm*) ;
 int kvm_free_physmem (struct kvm*) ;
 int kvmppc_free_vcpus (struct kvm*) ;

void kvm_arch_destroy_vm(struct kvm *kvm)
{
 kvmppc_free_vcpus(kvm);
 kvm_free_physmem(kvm);
 cleanup_srcu_struct(&kvm->srcu);
 kfree(kvm);
}
