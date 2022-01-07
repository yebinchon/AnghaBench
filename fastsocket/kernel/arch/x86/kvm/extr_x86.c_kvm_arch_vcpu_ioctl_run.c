
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cur_count; } ;
struct TYPE_8__ {scalar_t__ mp_state; int mmio_fault_cr2; TYPE_1__ pio; } ;
struct kvm_vcpu {int mmio_read_completed; scalar_t__ sigset_active; void* srcu_idx; TYPE_5__* kvm; TYPE_3__ arch; scalar_t__ mmio_needed; int mmio_data; int requests; int sigset; } ;
struct TYPE_9__ {int ret; } ;
struct TYPE_7__ {int data; } ;
struct kvm_run {scalar_t__ exit_reason; TYPE_4__ hypercall; TYPE_2__ mmio; int cr8; } ;
typedef int sigset_t ;
struct TYPE_10__ {int srcu; } ;


 int EAGAIN ;
 int EINVAL ;
 int EMULATE_DO_MMIO ;
 int EMULTYPE_NO_DECODE ;
 scalar_t__ KVM_EXIT_HYPERCALL ;
 scalar_t__ KVM_MP_STATE_UNINITIALIZED ;
 int KVM_REQ_UNHALT ;
 int SIG_SETMASK ;
 int VCPU_REGS_RAX ;
 int __vcpu_run (struct kvm_vcpu*) ;
 int clear_bit (int ,int *) ;
 int complete_pio (struct kvm_vcpu*) ;
 int irqchip_in_kernel (TYPE_5__*) ;
 int kvm_register_write (struct kvm_vcpu*,int ,int ) ;
 scalar_t__ kvm_set_cr8 (struct kvm_vcpu*,int ) ;
 int kvm_vcpu_block (struct kvm_vcpu*) ;
 int memcpy (int ,int ,int) ;
 int post_kvm_run_save (struct kvm_vcpu*) ;
 int sigprocmask (int ,int *,int *) ;
 void* srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,void*) ;
 scalar_t__ unlikely (int) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;
 int x86_emulate_instruction (struct kvm_vcpu*,int ,int ,int *,int ) ;

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


 if (!irqchip_in_kernel(vcpu->kvm)) {
  if (kvm_set_cr8(vcpu, kvm_run->cr8) != 0) {
   r = -EINVAL;
   goto out;
  }
 }

 if (vcpu->arch.pio.cur_count) {
  vcpu->srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
  r = complete_pio(vcpu);
  srcu_read_unlock(&vcpu->kvm->srcu, vcpu->srcu_idx);
  if (r)
   goto out;
 }
 if (kvm_run->exit_reason == KVM_EXIT_HYPERCALL)
  kvm_register_write(vcpu, VCPU_REGS_RAX,
         kvm_run->hypercall.ret);

 r = __vcpu_run(vcpu);

out:
 post_kvm_run_save(vcpu);
 if (vcpu->sigset_active)
  sigprocmask(SIG_SETMASK, &sigsaved, ((void*)0));

 vcpu_put(vcpu);
 return r;
}
