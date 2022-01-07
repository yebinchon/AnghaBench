
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct descriptor_table {int base; int limit; } ;


 int GUEST_GDTR_BASE ;
 int GUEST_GDTR_LIMIT ;
 int vmcs_read32 (int ) ;
 int vmcs_readl (int ) ;

__attribute__((used)) static void vmx_get_gdt(struct kvm_vcpu *vcpu, struct descriptor_table *dt)
{
 dt->limit = vmcs_read32(GUEST_GDTR_LIMIT);
 dt->base = vmcs_readl(GUEST_GDTR_BASE);
}
