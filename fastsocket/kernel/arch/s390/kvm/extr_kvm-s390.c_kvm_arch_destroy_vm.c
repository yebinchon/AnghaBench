
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dbf; scalar_t__ sca; } ;
struct kvm {int srcu; TYPE_1__ arch; } ;


 int cleanup_srcu_struct (int *) ;
 int debug_unregister (int ) ;
 int free_page (unsigned long) ;
 int kfree (struct kvm*) ;
 int kvm_free_physmem (struct kvm*) ;
 int kvm_free_vcpus (struct kvm*) ;

void kvm_arch_destroy_vm(struct kvm *kvm)
{
 kvm_free_vcpus(kvm);
 kvm_free_physmem(kvm);
 free_page((unsigned long)(kvm->arch.sca));
 debug_unregister(kvm->arch.dbf);
 cleanup_srcu_struct(&kvm->srcu);
 kfree(kvm);
}
