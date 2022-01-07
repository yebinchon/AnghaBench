
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct descriptor_table {int base; int limit; } ;


 int GUEST_IDTR_BASE ;
 int GUEST_IDTR_LIMIT ;
 int vmcs_write32 (int ,int ) ;
 int vmcs_writel (int ,int ) ;

__attribute__((used)) static void vmx_set_idt(struct kvm_vcpu *vcpu, struct descriptor_table *dt)
{
 vmcs_write32(GUEST_IDTR_LIMIT, dt->limit);
 vmcs_writel(GUEST_IDTR_BASE, dt->base);
}
