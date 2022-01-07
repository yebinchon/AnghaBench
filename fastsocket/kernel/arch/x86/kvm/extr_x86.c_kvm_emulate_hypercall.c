
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hypercalls; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;
struct TYPE_4__ {scalar_t__ (* get_cpl ) (struct kvm_vcpu*) ;} ;


 unsigned long KVM_ENOSYS ;
 unsigned long KVM_EPERM ;


 int VCPU_REGS_RAX ;
 int VCPU_REGS_RBX ;
 int VCPU_REGS_RCX ;
 int VCPU_REGS_RDX ;
 int VCPU_REGS_RSI ;
 int hc_gpa (struct kvm_vcpu*,unsigned long,unsigned long) ;
 int is_long_mode (struct kvm_vcpu*) ;
 int kvm_pv_mmu_op (struct kvm_vcpu*,unsigned long,int ,unsigned long*) ;
 unsigned long kvm_register_read (struct kvm_vcpu*,int ) ;
 int kvm_register_write (struct kvm_vcpu*,int ,unsigned long) ;
 TYPE_2__* kvm_x86_ops ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;
 int trace_kvm_hypercall (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;

int kvm_emulate_hypercall(struct kvm_vcpu *vcpu)
{
 unsigned long nr, a0, a1, a2, a3, ret;
 int r = 1;

 nr = kvm_register_read(vcpu, VCPU_REGS_RAX);
 a0 = kvm_register_read(vcpu, VCPU_REGS_RBX);
 a1 = kvm_register_read(vcpu, VCPU_REGS_RCX);
 a2 = kvm_register_read(vcpu, VCPU_REGS_RDX);
 a3 = kvm_register_read(vcpu, VCPU_REGS_RSI);

 trace_kvm_hypercall(nr, a0, a1, a2, a3);

 if (!is_long_mode(vcpu)) {
  nr &= 0xFFFFFFFF;
  a0 &= 0xFFFFFFFF;
  a1 &= 0xFFFFFFFF;
  a2 &= 0xFFFFFFFF;
  a3 &= 0xFFFFFFFF;
 }

 if (kvm_x86_ops->get_cpl(vcpu) != 0) {
  ret = -KVM_EPERM;
  goto out;
 }

 switch (nr) {
 case 128:
  ret = 0;
  break;
 case 129:
  r = kvm_pv_mmu_op(vcpu, a0, hc_gpa(vcpu, a1, a2), &ret);
  break;
 default:
  ret = -KVM_ENOSYS;
  break;
 }
out:
 kvm_register_write(vcpu, VCPU_REGS_RAX, ret);
 ++vcpu->stat.hypercalls;
 return r;
}
