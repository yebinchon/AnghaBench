#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u64 ;
struct pvclock_vcpu_time_info {int flags; } ;
struct TYPE_10__ {scalar_t__ tsc_timestamp; int version; int flags; scalar_t__ system_time; int /*<<< orphan*/  tsc_to_system_mul; int /*<<< orphan*/  tsc_shift; } ;
struct kvm_vcpu_arch {scalar_t__ last_guest_tsc; scalar_t__ last_kernel_ns; unsigned long hw_tsc_khz; unsigned long long time; int pvclock_set_guest_stopped_request; TYPE_3__ hv_clock; int /*<<< orphan*/  pv_time; int /*<<< orphan*/  pv_time_enabled; scalar_t__ tsc_catchup; } ;
struct kvm_vcpu {TYPE_2__* kvm; int /*<<< orphan*/  requests; struct kvm_vcpu_arch arch; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  guest_hv_clock ;
typedef  unsigned long long gpa_t ;
struct TYPE_8__ {scalar_t__ kvmclock_offset; } ;
struct TYPE_9__ {TYPE_1__ arch; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  KVM_REQ_CLOCK_UPDATE ; 
 int /*<<< orphan*/  MSR_IA32_TSC ; 
 int NSEC_PER_SEC ; 
 int PAGE_SIZE ; 
 int PVCLOCK_GUEST_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*,scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,unsigned long long,struct pvclock_vcpu_time_info*,int) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,struct pvclock_vcpu_time_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,unsigned long long,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int FUNC12 (unsigned long long) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 
 unsigned long FUNC16 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC17(struct kvm_vcpu *v)
{
	unsigned long flags;
	struct kvm_vcpu_arch *vcpu = &v->arch;
	unsigned long this_tsc_khz;
	s64 kernel_ns, max_kernel_ns;
	u64 tsc_timestamp;
	struct pvclock_vcpu_time_info guest_hv_clock;
	u8 pvclock_flags;
	bool use_cached_fc;
	gpa_t time;

	/* Keep irq disabled to prevent changes to the clock */
	FUNC11(flags);
	FUNC3(v, MSR_IA32_TSC, &tsc_timestamp);
	kernel_ns = FUNC2();
	this_tsc_khz = FUNC16(v);

	if (FUNC15(this_tsc_khz == 0)) {
		FUNC10(flags);
		FUNC14(KVM_REQ_CLOCK_UPDATE, &v->requests);
		return 1;
	}

	/*
	 * We may have to catch up the TSC to match elapsed wall clock
	 * time for two reasons, even if kvmclock is used.
	 *   1) CPU could have been running below the maximum TSC rate
	 *   2) Broken TSC compensation resets the base at each VCPU
	 *      entry to avoid unknown leaps of TSC even when running
	 *      again on the same CPU.  This may cause apparent elapsed
	 *      time to disappear, and the guest to stand still or run
	 *	very slowly.
	 */
	if (vcpu->tsc_catchup) {
		u64 tsc = FUNC1(v, kernel_ns);
		if (tsc > tsc_timestamp) {
			FUNC0(v, tsc - tsc_timestamp);
			tsc_timestamp = tsc;
		}
	}

	FUNC10(flags);

	if (!vcpu->pv_time_enabled)
		return 0;

	/*
	 * Time as measured by the TSC may go backwards when resetting the base
	 * tsc_timestamp.  The reason for this is that the TSC resolution is
	 * higher than the resolution of the other clock scales.  Thus, many
	 * possible measurments of the TSC correspond to one measurement of any
	 * other clock, and so a spread of values is possible.  This is not a
	 * problem for the computation of the nanosecond clock; with TSC rates
	 * around 1GHZ, there can only be a few cycles which correspond to one
	 * nanosecond value, and any path through this code will inevitably
	 * take longer than that.  However, with the kernel_ns value itself,
	 * the precision may be much lower, down to HZ granularity.  If the
	 * first sampling of TSC against kernel_ns ends in the low part of the
	 * range, and the second in the high end of the range, we can get:
	 *
	 * (TSC - offset_low) * S + kns_old > (TSC - offset_high) * S + kns_new
	 *
	 * As the sampling errors potentially range in the thousands of cycles,
	 * it is possible such a time value has already been observed by the
	 * guest.  To protect against this, we must compute the system time as
	 * observed by the guest and ensure the new system time is greater.
	 */
	max_kernel_ns = 0;
	if (vcpu->hv_clock.tsc_timestamp && vcpu->last_guest_tsc) {
		max_kernel_ns = vcpu->last_guest_tsc -
				vcpu->hv_clock.tsc_timestamp;
		max_kernel_ns = FUNC13(max_kernel_ns,
				    vcpu->hv_clock.tsc_to_system_mul,
				    vcpu->hv_clock.tsc_shift);
		max_kernel_ns += vcpu->last_kernel_ns;
	}

	if (FUNC15(vcpu->hw_tsc_khz != this_tsc_khz)) {
		FUNC4(NSEC_PER_SEC / 1000, this_tsc_khz,
				   &vcpu->hv_clock.tsc_shift,
				   &vcpu->hv_clock.tsc_to_system_mul);
		vcpu->hw_tsc_khz = this_tsc_khz;
	}

	if (max_kernel_ns > kernel_ns)
		kernel_ns = max_kernel_ns;

	/* With all the info we got, fill in the values */
	vcpu->hv_clock.tsc_timestamp = tsc_timestamp;
	vcpu->hv_clock.system_time = kernel_ns + v->kvm->arch.kvmclock_offset;
	vcpu->last_kernel_ns = kernel_ns;
	vcpu->last_guest_tsc = tsc_timestamp;


	/*
	 * The interface expects us to write an even number signaling that the
	 * update is finished. Since the guest won't see the intermediate
	 * state, we just increase by 2 at the end.
	 */
	vcpu->hv_clock.version += 2;

	time = vcpu->time & ~1ULL;
	use_cached_fc = sizeof(guest_hv_clock) <= (PAGE_SIZE -
				FUNC12(time));

	if (FUNC9(use_cached_fc)) {
		if (FUNC15(FUNC6(v->kvm, &vcpu->pv_time,
				&guest_hv_clock, sizeof(guest_hv_clock))))
			return -EFAULT;
	} else if (FUNC15(FUNC5(v->kvm, time,
				&guest_hv_clock, sizeof(guest_hv_clock))))
			return -EFAULT;

	/* retain PVCLOCK_GUEST_STOPPED if set in guest copy */
	pvclock_flags = (guest_hv_clock.flags & PVCLOCK_GUEST_STOPPED);

	if (vcpu->pvclock_set_guest_stopped_request) {
		pvclock_flags |= PVCLOCK_GUEST_STOPPED;
		vcpu->pvclock_set_guest_stopped_request = false;
	}

	vcpu->hv_clock.flags = pvclock_flags;

	if (FUNC9(use_cached_fc))
		FUNC8(v->kvm, &vcpu->pv_time,
					&vcpu->hv_clock,
					sizeof(vcpu->hv_clock));
	else
		FUNC7(v->kvm, time, &vcpu->hv_clock,
				sizeof(guest_hv_clock));

	return 0;
}