
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_sn2; } ;
struct kvm {TYPE_1__ arch; } ;


 int ENOMEM ;
 struct kvm* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct kvm*) ;
 int ia64_platform_is (char*) ;
 struct kvm* kvm_alloc_kvm () ;
 int kvm_init_vm (struct kvm*) ;

struct kvm *kvm_arch_create_vm(void)
{
 struct kvm *kvm = kvm_alloc_kvm();

 if (IS_ERR(kvm))
  return ERR_PTR(-ENOMEM);

 kvm->arch.is_sn2 = ia64_platform_is("sn2");

 kvm_init_vm(kvm);

 return kvm;

}
