#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct msr_data {int data; } ;
struct TYPE_6__ {scalar_t__ tsc_timestamp; } ;
struct TYPE_7__ {int last_tsc_write; int last_tsc_nsec; TYPE_2__ hv_clock; } ;
struct kvm_vcpu {TYPE_3__ arch; struct kvm* kvm; } ;
struct TYPE_5__ {int last_tsc_nsec; int last_tsc_write; int last_tsc_offset; int /*<<< orphan*/  tsc_write_lock; } ;
struct kvm {TYPE_1__ arch; } ;
typedef  int s64 ;
struct TYPE_8__ {int (* compute_tsc_offset ) (struct kvm_vcpu*,int) ;int /*<<< orphan*/  (* write_tsc_offset ) (struct kvm_vcpu*,int) ;} ;

/* Variables and functions */
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 TYPE_4__* kvm_x86_ops ; 
 int FUNC2 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int) ; 

void FUNC8(struct kvm_vcpu *vcpu, struct msr_data *msr)
{
	struct kvm *kvm = vcpu->kvm;
	u64 offset, ns, elapsed;
	unsigned long flags;
	s64 sdiff;
	u64 delta;
	u64 data = msr->data;

	FUNC4(&kvm->arch.tsc_write_lock, flags);
	offset = kvm_x86_ops->compute_tsc_offset(vcpu, data);
	ns = FUNC1();
	elapsed = ns - kvm->arch.last_tsc_nsec;
	sdiff = data - kvm->arch.last_tsc_write;
	if (sdiff < 0)
		sdiff = -sdiff;

	/*
	 * Special case: TSC write with a small delta (1 second) of virtual
	 * cycle time against real time is interpreted as an attempt
	 * to synchronize the CPU.
	 *
	 * For a reliable TSC, we can match TSC offsets, and for an
	 * unstable TSC, we will write the update, but ignore elapsed time
	 * in this computation. The reason for this is that unstable TSC
	 * will be compensated by the catchup code, and guest loops which
	 * continually write the TSC could end up overshooting the TSC if
	 * the elapsed time is factored in.
	 */
	delta = FUNC2(vcpu, elapsed);
	sdiff -= delta;
	if (sdiff < 0)
		sdiff = -sdiff;
	if (sdiff < FUNC2(vcpu, 1 * NSEC_PER_SEC) ) {
		if (!FUNC0()) {
			offset = kvm->arch.last_tsc_offset;
			FUNC3("kvm: matched tsc offset for %llu\n", data);
		} else {
			/* Unstable write; don't add elapsed time */
			FUNC3("kvm: matched write on unstable tsc\n");
		}
	} else {
		kvm->arch.last_tsc_nsec = ns;
		kvm->arch.last_tsc_write = data;
		kvm->arch.last_tsc_offset = offset;
	}
	kvm_x86_ops->write_tsc_offset(vcpu, offset);
	FUNC5(&kvm->arch.tsc_write_lock, flags);

	/* Reset of TSC must disable overshoot protection below */
	vcpu->arch.hv_clock.tsc_timestamp = 0;
	vcpu->arch.last_tsc_write = data;
	vcpu->arch.last_tsc_nsec = ns;
}