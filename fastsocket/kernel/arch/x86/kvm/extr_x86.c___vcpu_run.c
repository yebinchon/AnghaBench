
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int signal_exits; int request_irq_exits; } ;
struct TYPE_4__ {scalar_t__ mp_state; int sipi_vector; } ;
struct kvm_vcpu {void* srcu_idx; TYPE_3__ stat; TYPE_2__* run; int requests; TYPE_1__ arch; int vcpu_id; struct kvm* kvm; } ;
struct kvm {int srcu; } ;
struct TYPE_5__ {void* exit_reason; } ;


 int EINTR ;
 void* KVM_EXIT_INTR ;



 int KVM_REQ_PENDING_TIMER ;
 int KVM_REQ_UNHALT ;
 int clear_bit (int ,int *) ;
 int current ;
 scalar_t__ dm_request_for_irq_injection (struct kvm_vcpu*) ;
 int kvm_arch_vcpu_reset (struct kvm_vcpu*) ;
 scalar_t__ kvm_cpu_has_pending_timer (struct kvm_vcpu*) ;
 int kvm_inject_pending_timer_irqs (struct kvm_vcpu*) ;
 int kvm_lapic_reset (struct kvm_vcpu*) ;
 int kvm_resched (struct kvm_vcpu*) ;
 int kvm_vcpu_block (struct kvm_vcpu*) ;
 scalar_t__ need_resched () ;
 int pr_debug (char*,int ,int ) ;
 scalar_t__ signal_pending (int ) ;
 void* srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,void*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int vcpu_enter_guest (struct kvm_vcpu*) ;

__attribute__((used)) static int __vcpu_run(struct kvm_vcpu *vcpu)
{
 int r;
 struct kvm *kvm = vcpu->kvm;

 if (unlikely(vcpu->arch.mp_state == 128)) {
  pr_debug("vcpu %d received sipi with vector # %x\n",
    vcpu->vcpu_id, vcpu->arch.sipi_vector);
  kvm_lapic_reset(vcpu);
  r = kvm_arch_vcpu_reset(vcpu);
  if (r)
   return r;
  vcpu->arch.mp_state = 129;
 }

 vcpu->srcu_idx = srcu_read_lock(&kvm->srcu);

 r = 1;
 while (r > 0) {
  if (vcpu->arch.mp_state == 129)
   r = vcpu_enter_guest(vcpu);
  else {
   srcu_read_unlock(&kvm->srcu, vcpu->srcu_idx);
   kvm_vcpu_block(vcpu);
   vcpu->srcu_idx = srcu_read_lock(&kvm->srcu);
   if (test_and_clear_bit(KVM_REQ_UNHALT, &vcpu->requests))
   {
    switch(vcpu->arch.mp_state) {
    case 130:
     vcpu->arch.mp_state =
      129;
    case 129:
     break;
    case 128:
    default:
     r = -EINTR;
     break;
    }
   }
  }

  if (r <= 0)
   break;

  clear_bit(KVM_REQ_PENDING_TIMER, &vcpu->requests);
  if (kvm_cpu_has_pending_timer(vcpu))
   kvm_inject_pending_timer_irqs(vcpu);

  if (dm_request_for_irq_injection(vcpu)) {
   r = -EINTR;
   vcpu->run->exit_reason = KVM_EXIT_INTR;
   ++vcpu->stat.request_irq_exits;
  }
  if (signal_pending(current)) {
   r = -EINTR;
   vcpu->run->exit_reason = KVM_EXIT_INTR;
   ++vcpu->stat.signal_exits;
  }
  if (need_resched()) {
   srcu_read_unlock(&kvm->srcu, vcpu->srcu_idx);
   kvm_resched(vcpu);
   vcpu->srcu_idx = srcu_read_lock(&kvm->srcu);
  }
 }

 srcu_read_unlock(&kvm->srcu, vcpu->srcu_idx);

 return r;
}
