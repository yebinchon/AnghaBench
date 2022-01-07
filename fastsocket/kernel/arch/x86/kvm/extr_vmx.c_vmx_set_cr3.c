
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {unsigned long cr3; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_1__ arch; } ;
struct TYPE_5__ {unsigned long ept_identity_map_addr; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;


 int EPT_POINTER ;
 int GUEST_CR3 ;
 int construct_eptp (unsigned long) ;
 scalar_t__ enable_ept ;
 scalar_t__ is_paging (struct kvm_vcpu*) ;
 int vmcs_write64 (int ,int ) ;
 int vmcs_writel (int ,unsigned long) ;
 int vmx_flush_tlb (struct kvm_vcpu*) ;

__attribute__((used)) static void vmx_set_cr3(struct kvm_vcpu *vcpu, unsigned long cr3)
{
 unsigned long guest_cr3;
 u64 eptp;

 guest_cr3 = cr3;
 if (enable_ept) {
  eptp = construct_eptp(cr3);
  vmcs_write64(EPT_POINTER, eptp);
  guest_cr3 = is_paging(vcpu) ? vcpu->arch.cr3 :
   vcpu->kvm->arch.ept_identity_map_addr;
 }

 vmx_flush_tlb(vcpu);
 vmcs_writel(GUEST_CR3, guest_cr3);
}
