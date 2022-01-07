
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union context {int dummy; } context ;
struct TYPE_4__ {int launched; } ;
struct kvm_vcpu {TYPE_2__* kvm; int requests; TYPE_1__ arch; } ;
struct kvm_run {int exit_reason; } ;
struct TYPE_6__ {int (* tramp_entry ) (union context*,union context*) ;} ;
struct TYPE_5__ {int srcu; } ;


 int EINTR ;
 int KVM_EXIT_FAIL_ENTRY ;
 int KVM_EXIT_INTR ;
 int KVM_REQ_KICK ;
 int barrier () ;
 int clear_bit (int ,int *) ;
 int current ;
 union context* kvm_get_guest_context (struct kvm_vcpu*) ;
 union context* kvm_get_host_context (struct kvm_vcpu*) ;
 int kvm_guest_enter () ;
 int kvm_guest_exit () ;
 int kvm_handle_exit (struct kvm_run*,struct kvm_vcpu*) ;
 int kvm_resched (struct kvm_vcpu*) ;
 int kvm_vcpu_post_transition (struct kvm_vcpu*) ;
 int kvm_vcpu_pre_transition (struct kvm_vcpu*) ;
 TYPE_3__* kvm_vmm_info ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int need_resched () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int set_bit (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int stub1 (union context*,union context*) ;

__attribute__((used)) static int __vcpu_run(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
{
 union context *host_ctx, *guest_ctx;
 int r, idx;

 idx = srcu_read_lock(&vcpu->kvm->srcu);

again:
 if (signal_pending(current)) {
  r = -EINTR;
  kvm_run->exit_reason = KVM_EXIT_INTR;
  goto out;
 }

 preempt_disable();
 local_irq_disable();


 host_ctx = kvm_get_host_context(vcpu);
 guest_ctx = kvm_get_guest_context(vcpu);

 clear_bit(KVM_REQ_KICK, &vcpu->requests);

 r = kvm_vcpu_pre_transition(vcpu);
 if (r < 0)
  goto vcpu_run_fail;

 srcu_read_unlock(&vcpu->kvm->srcu, idx);
 kvm_guest_enter();




 kvm_vmm_info->tramp_entry(host_ctx, guest_ctx);

 kvm_vcpu_post_transition(vcpu);

 vcpu->arch.launched = 1;
 set_bit(KVM_REQ_KICK, &vcpu->requests);
 local_irq_enable();







 barrier();
 kvm_guest_exit();
 preempt_enable();

 idx = srcu_read_lock(&vcpu->kvm->srcu);

 r = kvm_handle_exit(kvm_run, vcpu);

 if (r > 0) {
  if (!need_resched())
   goto again;
 }

out:
 srcu_read_unlock(&vcpu->kvm->srcu, idx);
 if (r > 0) {
  kvm_resched(vcpu);
  idx = srcu_read_lock(&vcpu->kvm->srcu);
  goto again;
 }

 return r;

vcpu_run_fail:
 local_irq_enable();
 preempt_enable();
 kvm_run->exit_reason = KVM_EXIT_FAIL_ENTRY;
 goto out;
}
