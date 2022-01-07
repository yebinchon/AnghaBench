
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int nmi_pending; int switch_db_regs; scalar_t__ apic_attention; int last_guest_tsc; int * eff_db; } ;
struct TYPE_11__ {int exits; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_7__* kvm; int srcu_idx; TYPE_3__ stat; scalar_t__ requests; int vcpu_id; scalar_t__ fpu_active; TYPE_1__* run; } ;
struct TYPE_15__ {int srcu; } ;
struct TYPE_14__ {int (* handle_exit ) (struct kvm_vcpu*) ;int (* run ) (struct kvm_vcpu*) ;int (* enable_irq_window ) (struct kvm_vcpu*) ;int (* enable_nmi_window ) (struct kvm_vcpu*) ;int (* prepare_guest_switch ) (struct kvm_vcpu*) ;int (* fpu_deactivate ) (struct kvm_vcpu*) ;int (* tlb_flush ) (struct kvm_vcpu*) ;} ;
struct TYPE_10__ {int debugreg7; int debugreg6; int debugreg3; int debugreg2; int debugreg1; int debugreg0; } ;
struct TYPE_13__ {TYPE_2__ thread; } ;
struct TYPE_9__ {int exit_reason; scalar_t__ request_interrupt_window; } ;


 int KVM_EXIT_SHUTDOWN ;
 int KVM_EXIT_TPR_ACCESS ;
 scalar_t__ KVM_PROFILING ;
 int KVM_REQ_CLOCK_UPDATE ;
 int KVM_REQ_DEACTIVATE_FPU ;
 int KVM_REQ_GLOBAL_CLOCK_UPDATE ;
 int KVM_REQ_KICK ;
 int KVM_REQ_MIGRATE_TIMER ;
 int KVM_REQ_MMU_RELOAD ;
 int KVM_REQ_MMU_SYNC ;
 int KVM_REQ_PMI ;
 int KVM_REQ_PMU ;
 int KVM_REQ_REPORT_TPR_ACCESS ;
 int KVM_REQ_STEAL_UPDATE ;
 int KVM_REQ_TLB_FLUSH ;
 int KVM_REQ_TRIPLE_FAULT ;
 int MSR_IA32_TSC ;
 int TIF_DEBUG ;
 int __kvm_migrate_timers (struct kvm_vcpu*) ;
 int barrier () ;
 int clear_bit (int ,scalar_t__*) ;
 TYPE_5__* current ;
 int inject_pending_event (struct kvm_vcpu*) ;
 int irqchip_in_kernel (TYPE_7__*) ;
 scalar_t__ kvm_cpu_has_interrupt (struct kvm_vcpu*) ;
 int kvm_deliver_pmi (struct kvm_vcpu*) ;
 int kvm_gen_kvmclock_update (struct kvm_vcpu*) ;
 int kvm_get_msr (struct kvm_vcpu*,int ,int *) ;
 int kvm_guest_enter () ;
 int kvm_guest_exit () ;
 int kvm_guest_time_update (struct kvm_vcpu*) ;
 int kvm_handle_pmu_event (struct kvm_vcpu*) ;
 scalar_t__ kvm_lapic_enabled (struct kvm_vcpu*) ;
 int kvm_lapic_sync_from_vapic (struct kvm_vcpu*) ;
 int kvm_lapic_sync_to_vapic (struct kvm_vcpu*) ;
 int kvm_load_guest_fpu (struct kvm_vcpu*) ;
 int kvm_load_guest_xcr0 (struct kvm_vcpu*) ;
 int kvm_mmu_reload (struct kvm_vcpu*) ;
 int kvm_mmu_sync_roots (struct kvm_vcpu*) ;
 int kvm_mmu_unload (struct kvm_vcpu*) ;
 unsigned long kvm_rip_read (struct kvm_vcpu*) ;
 TYPE_6__* kvm_x86_ops ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 scalar_t__ need_resched () ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ prof_on ;
 int profile_hit (scalar_t__,void*) ;
 int record_steal_time (struct kvm_vcpu*) ;
 int set_bit (int ,scalar_t__*) ;
 int set_debugreg (int ,int) ;
 scalar_t__ signal_pending (TYPE_5__*) ;
 int smp_mb () ;
 int smp_mb__after_clear_bit () ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int ) ;
 int stub1 (struct kvm_vcpu*) ;
 int stub2 (struct kvm_vcpu*) ;
 int stub3 (struct kvm_vcpu*) ;
 int stub4 (struct kvm_vcpu*) ;
 int stub5 (struct kvm_vcpu*) ;
 int stub6 (struct kvm_vcpu*) ;
 int stub7 (struct kvm_vcpu*) ;
 scalar_t__ test_and_clear_bit (int ,scalar_t__*) ;
 scalar_t__ test_thread_flag (int ) ;
 int trace_kvm_entry (int ) ;
 scalar_t__ unlikely (int) ;
 int update_cr8_intercept (struct kvm_vcpu*) ;

__attribute__((used)) static int vcpu_enter_guest(struct kvm_vcpu *vcpu)
{
 int r;
 bool nmi_pending;
 bool req_int_win = !irqchip_in_kernel(vcpu->kvm) &&
  vcpu->run->request_interrupt_window;

 if (vcpu->requests)
  if (test_and_clear_bit(KVM_REQ_MMU_RELOAD, &vcpu->requests))
   kvm_mmu_unload(vcpu);

 r = kvm_mmu_reload(vcpu);
 if (unlikely(r))
  goto out;

 if (vcpu->requests) {
  if (test_and_clear_bit(KVM_REQ_MIGRATE_TIMER, &vcpu->requests))
   __kvm_migrate_timers(vcpu);
  if (test_and_clear_bit(KVM_REQ_GLOBAL_CLOCK_UPDATE,
      &vcpu->requests))
   kvm_gen_kvmclock_update(vcpu);
  if (test_and_clear_bit(KVM_REQ_CLOCK_UPDATE, &vcpu->requests)) {
   r = kvm_guest_time_update(vcpu);
   if (unlikely(r))
    goto out;
  }
  if (test_and_clear_bit(KVM_REQ_MMU_SYNC, &vcpu->requests))
   kvm_mmu_sync_roots(vcpu);
  if (test_and_clear_bit(KVM_REQ_TLB_FLUSH, &vcpu->requests))
   kvm_x86_ops->tlb_flush(vcpu);
  if (test_and_clear_bit(KVM_REQ_REPORT_TPR_ACCESS,
           &vcpu->requests)) {
   vcpu->run->exit_reason = KVM_EXIT_TPR_ACCESS;
   r = 0;
   goto out;
  }
  if (test_and_clear_bit(KVM_REQ_TRIPLE_FAULT, &vcpu->requests)) {
   vcpu->run->exit_reason = KVM_EXIT_SHUTDOWN;
   r = 0;
   goto out;
  }
  if (test_and_clear_bit(KVM_REQ_DEACTIVATE_FPU, &vcpu->requests)) {
   vcpu->fpu_active = 0;
   kvm_x86_ops->fpu_deactivate(vcpu);
  }
  if (test_and_clear_bit(KVM_REQ_PMU, &vcpu->requests))
   kvm_handle_pmu_event(vcpu);
  if (test_and_clear_bit(KVM_REQ_PMI, &vcpu->requests))
   kvm_deliver_pmi(vcpu);
  if (test_and_clear_bit(KVM_REQ_STEAL_UPDATE, &vcpu->requests))
   record_steal_time(vcpu);
 }

 preempt_disable();

 kvm_x86_ops->prepare_guest_switch(vcpu);
 kvm_load_guest_fpu(vcpu);
 kvm_load_guest_xcr0(vcpu);

 local_irq_disable();

 clear_bit(KVM_REQ_KICK, &vcpu->requests);
 smp_mb__after_clear_bit();

 if (vcpu->requests || need_resched() || signal_pending(current)) {
  set_bit(KVM_REQ_KICK, &vcpu->requests);
  local_irq_enable();
  preempt_enable();
  r = 1;
  goto out;
 }







 nmi_pending = vcpu->arch.nmi_pending;
 smp_mb();

 inject_pending_event(vcpu);


 if (nmi_pending)
  kvm_x86_ops->enable_nmi_window(vcpu);
 else if (kvm_cpu_has_interrupt(vcpu) || req_int_win)
  kvm_x86_ops->enable_irq_window(vcpu);

 if (kvm_lapic_enabled(vcpu)) {
  update_cr8_intercept(vcpu);
  kvm_lapic_sync_to_vapic(vcpu);
 }

 srcu_read_unlock(&vcpu->kvm->srcu, vcpu->srcu_idx);

 kvm_guest_enter();

 if (unlikely(vcpu->arch.switch_db_regs)) {
  set_debugreg(0, 7);
  set_debugreg(vcpu->arch.eff_db[0], 0);
  set_debugreg(vcpu->arch.eff_db[1], 1);
  set_debugreg(vcpu->arch.eff_db[2], 2);
  set_debugreg(vcpu->arch.eff_db[3], 3);
 }

 trace_kvm_entry(vcpu->vcpu_id);
 kvm_x86_ops->run(vcpu);

 if (unlikely(vcpu->arch.switch_db_regs || test_thread_flag(TIF_DEBUG))) {
  set_debugreg(current->thread.debugreg0, 0);
  set_debugreg(current->thread.debugreg1, 1);
  set_debugreg(current->thread.debugreg2, 2);
  set_debugreg(current->thread.debugreg3, 3);
  set_debugreg(current->thread.debugreg6, 6);
  set_debugreg(current->thread.debugreg7, 7);
 }

 kvm_get_msr(vcpu, MSR_IA32_TSC, &vcpu->arch.last_guest_tsc);
 set_bit(KVM_REQ_KICK, &vcpu->requests);
 local_irq_enable();

 ++vcpu->stat.exits;







 barrier();

 kvm_guest_exit();

 preempt_enable();

 vcpu->srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);




 if (unlikely(prof_on == KVM_PROFILING)) {
  unsigned long rip = kvm_rip_read(vcpu);
  profile_hit(KVM_PROFILING, (void *)rip);
 }

 if (vcpu->arch.apic_attention)
  kvm_lapic_sync_from_vapic(vcpu);

 r = kvm_x86_ops->handle_exit(vcpu);
out:
 return r;
}
