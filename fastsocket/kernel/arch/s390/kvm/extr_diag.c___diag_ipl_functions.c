
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* guest_gprs; TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_3__* run; TYPE_2__ arch; } ;
struct TYPE_6__ {unsigned long s390_reset_flags; int exit_reason; } ;
struct TYPE_4__ {int ipa; int cpuflags; } ;


 int CPUSTAT_RUNNING ;
 int ENOTSUPP ;
 int EREMOTE ;
 int KVM_EXIT_S390_RESET ;
 unsigned long KVM_S390_RESET_CLEAR ;
 unsigned long KVM_S390_RESET_CPU_INIT ;
 unsigned long KVM_S390_RESET_IPL ;
 unsigned long KVM_S390_RESET_SUBSYSTEM ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,unsigned long) ;
 int atomic_clear_mask (int ,int *) ;

__attribute__((used)) static int __diag_ipl_functions(struct kvm_vcpu *vcpu)
{
 unsigned int reg = vcpu->arch.sie_block->ipa & 0xf;
 unsigned long subcode = vcpu->arch.guest_gprs[reg] & 0xffff;

 VCPU_EVENT(vcpu, 5, "diag ipl functions, subcode %lx", subcode);
 switch (subcode) {
 case 3:
  vcpu->run->s390_reset_flags = KVM_S390_RESET_CLEAR;
  break;
 case 4:
  vcpu->run->s390_reset_flags = 0;
  break;
 default:
  return -ENOTSUPP;
 }

 atomic_clear_mask(CPUSTAT_RUNNING, &vcpu->arch.sie_block->cpuflags);
 vcpu->run->s390_reset_flags |= KVM_S390_RESET_SUBSYSTEM;
 vcpu->run->s390_reset_flags |= KVM_S390_RESET_IPL;
 vcpu->run->s390_reset_flags |= KVM_S390_RESET_CPU_INIT;
 vcpu->run->exit_reason = KVM_EXIT_S390_RESET;
 VCPU_EVENT(vcpu, 3, "requesting userspace resets %llx",
   vcpu->run->s390_reset_flags);
 return -EREMOTE;
}
