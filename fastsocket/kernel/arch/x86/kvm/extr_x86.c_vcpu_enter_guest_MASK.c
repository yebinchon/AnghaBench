#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int nmi_pending; int switch_db_regs; scalar_t__ apic_attention; int /*<<< orphan*/  last_guest_tsc; int /*<<< orphan*/ * eff_db; } ;
struct TYPE_11__ {int /*<<< orphan*/  exits; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_7__* kvm; int /*<<< orphan*/  srcu_idx; TYPE_3__ stat; scalar_t__ requests; int /*<<< orphan*/  vcpu_id; scalar_t__ fpu_active; TYPE_1__* run; } ;
struct TYPE_15__ {int /*<<< orphan*/  srcu; } ;
struct TYPE_14__ {int (* handle_exit ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* run ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* enable_irq_window ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* enable_nmi_window ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* prepare_guest_switch ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* fpu_deactivate ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* tlb_flush ) (struct kvm_vcpu*) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  debugreg7; int /*<<< orphan*/  debugreg6; int /*<<< orphan*/  debugreg3; int /*<<< orphan*/  debugreg2; int /*<<< orphan*/  debugreg1; int /*<<< orphan*/  debugreg0; } ;
struct TYPE_13__ {TYPE_2__ thread; } ;
struct TYPE_9__ {int /*<<< orphan*/  exit_reason; scalar_t__ request_interrupt_window; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_EXIT_SHUTDOWN ; 
 int /*<<< orphan*/  KVM_EXIT_TPR_ACCESS ; 
 scalar_t__ KVM_PROFILING ; 
 int /*<<< orphan*/  KVM_REQ_CLOCK_UPDATE ; 
 int /*<<< orphan*/  KVM_REQ_DEACTIVATE_FPU ; 
 int /*<<< orphan*/  KVM_REQ_GLOBAL_CLOCK_UPDATE ; 
 int /*<<< orphan*/  KVM_REQ_KICK ; 
 int /*<<< orphan*/  KVM_REQ_MIGRATE_TIMER ; 
 int /*<<< orphan*/  KVM_REQ_MMU_RELOAD ; 
 int /*<<< orphan*/  KVM_REQ_MMU_SYNC ; 
 int /*<<< orphan*/  KVM_REQ_PMI ; 
 int /*<<< orphan*/  KVM_REQ_PMU ; 
 int /*<<< orphan*/  KVM_REQ_REPORT_TPR_ACCESS ; 
 int /*<<< orphan*/  KVM_REQ_STEAL_UPDATE ; 
 int /*<<< orphan*/  KVM_REQ_TLB_FLUSH ; 
 int /*<<< orphan*/  KVM_REQ_TRIPLE_FAULT ; 
 int /*<<< orphan*/  MSR_IA32_TSC ; 
 int /*<<< orphan*/  TIF_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC13 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*) ; 
 int FUNC18 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC19 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC20 (struct kvm_vcpu*) ; 
 unsigned long FUNC21 (struct kvm_vcpu*) ; 
 TYPE_6__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 scalar_t__ FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 scalar_t__ prof_on ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC28 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC31 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC37 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC38 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC39 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC40 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC41 (struct kvm_vcpu*) ; 
 int FUNC42 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC43 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC44 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC46 (int) ; 
 int /*<<< orphan*/  FUNC47 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC48(struct kvm_vcpu *vcpu)
{
	int r;
	bool nmi_pending;
	bool req_int_win = !FUNC4(vcpu->kvm) &&
		vcpu->run->request_interrupt_window;

	if (vcpu->requests)
		if (FUNC43(KVM_REQ_MMU_RELOAD, &vcpu->requests))
			FUNC20(vcpu);

	r = FUNC18(vcpu);
	if (FUNC46(r))
		goto out;

	if (vcpu->requests) {
		if (FUNC43(KVM_REQ_MIGRATE_TIMER, &vcpu->requests))
			FUNC0(vcpu);
		if (FUNC43(KVM_REQ_GLOBAL_CLOCK_UPDATE,
		    &vcpu->requests))
			FUNC7(vcpu);
		if (FUNC43(KVM_REQ_CLOCK_UPDATE, &vcpu->requests)) {
			r = FUNC11(vcpu);
			if (FUNC46(r))
				goto out;
		}
		if (FUNC43(KVM_REQ_MMU_SYNC, &vcpu->requests))
			FUNC19(vcpu);
		if (FUNC43(KVM_REQ_TLB_FLUSH, &vcpu->requests))
			kvm_x86_ops->tlb_flush(vcpu);
		if (FUNC43(KVM_REQ_REPORT_TPR_ACCESS,
				       &vcpu->requests)) {
			vcpu->run->exit_reason = KVM_EXIT_TPR_ACCESS;
			r = 0;
			goto out;
		}
		if (FUNC43(KVM_REQ_TRIPLE_FAULT, &vcpu->requests)) {
			vcpu->run->exit_reason = KVM_EXIT_SHUTDOWN;
			r = 0;
			goto out;
		}
		if (FUNC43(KVM_REQ_DEACTIVATE_FPU, &vcpu->requests)) {
			vcpu->fpu_active = 0;
			kvm_x86_ops->fpu_deactivate(vcpu);
		}
		if (FUNC43(KVM_REQ_PMU, &vcpu->requests))
			FUNC12(vcpu);
		if (FUNC43(KVM_REQ_PMI, &vcpu->requests))
			FUNC6(vcpu);
		if (FUNC43(KVM_REQ_STEAL_UPDATE, &vcpu->requests))
			FUNC28(vcpu);
	}

	FUNC25();

	kvm_x86_ops->prepare_guest_switch(vcpu);
	FUNC16(vcpu);
	FUNC17(vcpu);

	FUNC22();

	FUNC2(KVM_REQ_KICK, &vcpu->requests);
	FUNC33();

	if (vcpu->requests || FUNC24() || FUNC31(current)) {
		FUNC29(KVM_REQ_KICK, &vcpu->requests);
		FUNC23();
		FUNC26();
		r = 1;
		goto out;
	}

	/*
 	 * An NMI can be injected between local nmi_pending read and
 	 * vcpu->arch.nmi_pending read inside inject_pending_event().
 	 * But in that case, a kick IPI will be sent, which makes
 	 * the race described above benign.
 	 */
	nmi_pending = vcpu->arch.nmi_pending;
	FUNC32();

	FUNC3(vcpu);

	/* enable NMI/IRQ window open exits if needed */
	if (nmi_pending)
		kvm_x86_ops->enable_nmi_window(vcpu);
	else if (FUNC5(vcpu) || req_int_win)
		kvm_x86_ops->enable_irq_window(vcpu);

	if (FUNC13(vcpu)) {
		FUNC47(vcpu);
		FUNC15(vcpu);
	}

	FUNC35(&vcpu->kvm->srcu, vcpu->srcu_idx);

	FUNC9();

	if (FUNC46(vcpu->arch.switch_db_regs)) {
		FUNC30(0, 7);
		FUNC30(vcpu->arch.eff_db[0], 0);
		FUNC30(vcpu->arch.eff_db[1], 1);
		FUNC30(vcpu->arch.eff_db[2], 2);
		FUNC30(vcpu->arch.eff_db[3], 3);
	}

	FUNC45(vcpu->vcpu_id);
	kvm_x86_ops->run(vcpu);

	if (FUNC46(vcpu->arch.switch_db_regs || FUNC44(TIF_DEBUG))) {
		FUNC30(current->thread.debugreg0, 0);
		FUNC30(current->thread.debugreg1, 1);
		FUNC30(current->thread.debugreg2, 2);
		FUNC30(current->thread.debugreg3, 3);
		FUNC30(current->thread.debugreg6, 6);
		FUNC30(current->thread.debugreg7, 7);
	}

	FUNC8(vcpu, MSR_IA32_TSC, &vcpu->arch.last_guest_tsc);
	FUNC29(KVM_REQ_KICK, &vcpu->requests);
	FUNC23();

	++vcpu->stat.exits;

	/*
	 * We must have an instruction between local_irq_enable() and
	 * kvm_guest_exit(), so the timer interrupt isn't delayed by
	 * the interrupt shadow.  The stat.exits increment will do nicely.
	 * But we need to prevent reordering, hence this barrier():
	 */
	FUNC1();

	FUNC10();

	FUNC26();

	vcpu->srcu_idx = FUNC34(&vcpu->kvm->srcu);

	/*
	 * Profile KVM exit RIPs:
	 */
	if (FUNC46(prof_on == KVM_PROFILING)) {
		unsigned long rip = FUNC21(vcpu);
		FUNC27(KVM_PROFILING, (void *)rip);
	}

	if (vcpu->arch.apic_attention)
		FUNC14(vcpu);

	r = kvm_x86_ops->handle_exit(vcpu);
out:
	return r;
}