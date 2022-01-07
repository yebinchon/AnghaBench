
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int dummy; } ;


 unsigned long IA64_PSR_I ;
 unsigned long IA64_PSR_RI ;
 int IRQ_MASKED_BY_INSVC ;
 int IRQ_NO_MASKED ;
 int NULL_VECTOR ;
 long VCPU (struct kvm_vcpu*,unsigned long) ;
 int highest_inservice_irq (struct kvm_vcpu*) ;
 int highest_pending_irq (struct kvm_vcpu*) ;
 int irq_masked (struct kvm_vcpu*,int,int) ;
 int reflect_interruption (int ,unsigned long,int ,int,struct kvm_pt_regs*) ;
 int update_vhpi (struct kvm_vcpu*,int) ;
 struct kvm_pt_regs* vcpu_regs (struct kvm_vcpu*) ;
 unsigned long vhpi ;

void check_pending_irq(struct kvm_vcpu *vcpu)
{
 int mask, h_pending, h_inservice;
 u64 isr;
 unsigned long vpsr;
 struct kvm_pt_regs *regs = vcpu_regs(vcpu);

 h_pending = highest_pending_irq(vcpu);
 if (h_pending == NULL_VECTOR) {
  update_vhpi(vcpu, NULL_VECTOR);
  return;
 }
 h_inservice = highest_inservice_irq(vcpu);

 vpsr = VCPU(vcpu, vpsr);
 mask = irq_masked(vcpu, h_pending, h_inservice);
 if ((vpsr & IA64_PSR_I) && IRQ_NO_MASKED == mask) {
  isr = vpsr & IA64_PSR_RI;
  update_vhpi(vcpu, h_pending);
  reflect_interruption(0, isr, 0, 12, regs);
 } else if (mask == IRQ_MASKED_BY_INSVC) {
  if (VCPU(vcpu, vhpi))
   update_vhpi(vcpu, NULL_VECTOR);
 } else {

  update_vhpi(vcpu, h_pending);
 }
}
