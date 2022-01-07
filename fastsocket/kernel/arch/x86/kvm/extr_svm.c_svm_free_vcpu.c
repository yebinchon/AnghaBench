
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msrpm; int hsave; } ;
struct vcpu_svm {int vmcb_pa; TYPE_1__ nested; int msrpm; } ;
struct kvm_vcpu {int dummy; } ;


 int MSRPM_ALLOC_ORDER ;
 int PAGE_SHIFT ;
 int __free_page (int ) ;
 int __free_pages (int ,int ) ;
 int kmem_cache_free (int ,struct vcpu_svm*) ;
 int kvm_vcpu_cache ;
 int kvm_vcpu_uninit (struct kvm_vcpu*) ;
 int pfn_to_page (int) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;
 int virt_to_page (int ) ;

__attribute__((used)) static void svm_free_vcpu(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 __free_page(pfn_to_page(svm->vmcb_pa >> PAGE_SHIFT));
 __free_pages(virt_to_page(svm->msrpm), MSRPM_ALLOC_ORDER);
 __free_page(virt_to_page(svm->nested.hsave));
 __free_pages(virt_to_page(svm->nested.msrpm), MSRPM_ALLOC_ORDER);
 kvm_vcpu_uninit(vcpu);
 kmem_cache_free(kvm_vcpu_cache, svm);
}
