
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mp_state; } ;
struct kvm_vcpu {int mmio_read_completed; scalar_t__ sigset_active; scalar_t__ mmio_needed; int mmio_data; int requests; TYPE_1__ arch; int sigset; } ;
struct TYPE_4__ {int data; } ;
struct kvm_run {TYPE_2__ mmio; } ;
typedef int sigset_t ;


 int EAGAIN ;
 scalar_t__ KVM_MP_STATE_UNINITIALIZED ;
 int KVM_REQ_UNHALT ;
 int SIG_SETMASK ;
 int __vcpu_run (struct kvm_vcpu*,struct kvm_run*) ;
 int clear_bit (int ,int *) ;
 int kvm_set_mmio_data (struct kvm_vcpu*) ;
 int kvm_vcpu_block (struct kvm_vcpu*) ;
 int memcpy (int ,int ,int) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ unlikely (int) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
{
 int r;
 sigset_t sigsaved;

 vcpu_load(vcpu);

 if (vcpu->sigset_active)
  sigprocmask(SIG_SETMASK, &vcpu->sigset, &sigsaved);

 if (unlikely(vcpu->arch.mp_state == KVM_MP_STATE_UNINITIALIZED)) {
  kvm_vcpu_block(vcpu);
  clear_bit(KVM_REQ_UNHALT, &vcpu->requests);
  r = -EAGAIN;
  goto out;
 }

 if (vcpu->mmio_needed) {
  memcpy(vcpu->mmio_data, kvm_run->mmio.data, 8);
  kvm_set_mmio_data(vcpu);
  vcpu->mmio_read_completed = 1;
  vcpu->mmio_needed = 0;
 }
 r = __vcpu_run(vcpu, kvm_run);
out:
 if (vcpu->sigset_active)
  sigprocmask(SIG_SETMASK, &sigsaved, ((void*)0));

 vcpu_put(vcpu);
 return r;
}
