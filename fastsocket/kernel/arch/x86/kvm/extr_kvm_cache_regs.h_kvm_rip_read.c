
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int VCPU_REGS_RIP ;
 unsigned long kvm_register_read (struct kvm_vcpu*,int ) ;

__attribute__((used)) static inline unsigned long kvm_rip_read(struct kvm_vcpu *vcpu)
{
 return kvm_register_read(vcpu, VCPU_REGS_RIP);
}
