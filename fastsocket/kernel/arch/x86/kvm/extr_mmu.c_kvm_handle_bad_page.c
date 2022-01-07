
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pfn_t ;
typedef int gfn_t ;


 int EFAULT ;
 int current ;
 int gfn_to_hva (struct kvm*,int ) ;
 scalar_t__ is_fault_pfn (int ) ;
 scalar_t__ is_hwpoison_pfn (int ) ;
 int kvm_release_pfn_clean (int ) ;
 int kvm_send_hwpoison_signal (int ,int ) ;

__attribute__((used)) static int kvm_handle_bad_page(struct kvm *kvm, gfn_t gfn, pfn_t pfn)
{
 kvm_release_pfn_clean(pfn);
 if (is_hwpoison_pfn(pfn)) {
  kvm_send_hwpoison_signal(gfn_to_hva(kvm, gfn), current);
  return 0;
 } else if (is_fault_pfn(pfn))
  return -EFAULT;

 return 1;
}
