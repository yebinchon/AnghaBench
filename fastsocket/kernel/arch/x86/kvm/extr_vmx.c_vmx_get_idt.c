
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct descriptor_table {int base; int limit; } ;


 int GUEST_IDTR_BASE ;
 int GUEST_IDTR_LIMIT ;
 int vmcs_read32 (int ) ;
 int vmcs_readl (int ) ;

__attribute__((used)) static void vmx_get_idt(struct kvm_vcpu *vcpu, struct descriptor_table *dt)
{
 dt->limit = vmcs_read32(GUEST_IDTR_LIMIT);
 dt->base = vmcs_readl(GUEST_IDTR_BASE);
}
