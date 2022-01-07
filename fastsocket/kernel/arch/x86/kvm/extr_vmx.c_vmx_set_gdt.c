
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct descriptor_table {int base; int limit; } ;


 int GUEST_GDTR_BASE ;
 int GUEST_GDTR_LIMIT ;
 int vmcs_write32 (int ,int ) ;
 int vmcs_writel (int ,int ) ;

__attribute__((used)) static void vmx_set_gdt(struct kvm_vcpu *vcpu, struct descriptor_table *dt)
{
 vmcs_write32(GUEST_GDTR_LIMIT, dt->limit);
 vmcs_writel(GUEST_GDTR_BASE, dt->base);
}
