
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvm_vcpu {int kvm; } ;
typedef int gva_t ;
typedef int gpa_t ;


 int PAGE_SHIFT ;
 int UNMAPPED_GVA ;
 struct page* gfn_to_page (int ,int) ;
 int kvm_mmu_gva_to_gpa_read (struct kvm_vcpu*,int ,int *) ;

struct page *gva_to_page(struct kvm_vcpu *vcpu, gva_t gva)
{
 struct page *page;

 gpa_t gpa = kvm_mmu_gva_to_gpa_read(vcpu, gva, ((void*)0));

 if (gpa == UNMAPPED_GVA)
  return ((void*)0);

 page = gfn_to_page(vcpu->kvm, gpa >> PAGE_SHIFT);

 return page;
}
