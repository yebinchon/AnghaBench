
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_2__ {int msr; int srr0; int pc; int srr1; int ivpr; int* ivor; int pending_exceptions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
 int MSR_CE ;
 int MSR_DE ;
 int MSR_EE ;
 int MSR_ME ;
 int clear_bit (unsigned int,int *) ;
 int kvmppc_set_msr (struct kvm_vcpu*,int) ;

__attribute__((used)) static int kvmppc_booke_irqprio_deliver(struct kvm_vcpu *vcpu,
                                        unsigned int priority)
{
 int allowed = 0;
 ulong msr_mask;

 switch (priority) {
 case 133:
 case 140:
 case 135:
 case 129:
 case 143:
 case 136:
 case 137:
 case 130:
 case 132:
 case 131:
 case 145:
 case 146:
  allowed = 1;
  msr_mask = MSR_CE|MSR_ME|MSR_DE;
  break;
 case 144:
 case 128:
  allowed = vcpu->arch.msr & MSR_CE;
  msr_mask = MSR_ME;
  break;
 case 134:
  allowed = vcpu->arch.msr & MSR_ME;
  msr_mask = 0;
  break;
 case 139:
 case 141:
 case 138:
  allowed = vcpu->arch.msr & MSR_EE;
  msr_mask = MSR_CE|MSR_ME|MSR_DE;
  break;
 case 142:
  allowed = vcpu->arch.msr & MSR_DE;
  msr_mask = MSR_ME;
  break;
 }

 if (allowed) {
  vcpu->arch.srr0 = vcpu->arch.pc;
  vcpu->arch.srr1 = vcpu->arch.msr;
  vcpu->arch.pc = vcpu->arch.ivpr | vcpu->arch.ivor[priority];
  kvmppc_set_msr(vcpu, vcpu->arch.msr & msr_mask);

  clear_bit(priority, &vcpu->arch.pending_exceptions);
 }

 return allowed;
}
