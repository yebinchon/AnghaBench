
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct desc_struct {int dummy; } ;
typedef int gpa_t ;


 int get_desc_base (struct desc_struct*) ;
 int kvm_mmu_gva_to_gpa_write (struct kvm_vcpu*,int ,int *) ;

__attribute__((used)) static gpa_t get_tss_base_addr_write(struct kvm_vcpu *vcpu,
          struct desc_struct *seg_desc)
{
 u32 base_addr = get_desc_base(seg_desc);

 return kvm_mmu_gva_to_gpa_write(vcpu, base_addr, ((void*)0));
}
