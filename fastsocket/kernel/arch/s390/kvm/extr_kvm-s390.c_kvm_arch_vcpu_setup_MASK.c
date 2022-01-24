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
struct TYPE_8__ {int version; } ;
struct TYPE_7__ {int /*<<< orphan*/  function; } ;
struct TYPE_6__ {TYPE_4__ cpu_id; TYPE_3__ ckc_timer; int /*<<< orphan*/  tasklet; TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; int /*<<< orphan*/  requests; } ;
struct TYPE_5__ {int ecb; int eca; int fac; int /*<<< orphan*/  cpuflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  CPUSTAT_ZARCH ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  KVM_REQ_MMU_RELOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ facilities ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_s390_idle_wakeup ; 
 int /*<<< orphan*/  kvm_s390_tasklet ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC5(struct kvm_vcpu *vcpu)
{
	FUNC0(&vcpu->arch.sie_block->cpuflags, CPUSTAT_ZARCH);
	FUNC3(KVM_REQ_MMU_RELOAD, &vcpu->requests);
	vcpu->arch.sie_block->ecb   = 2;
	vcpu->arch.sie_block->eca   = 0xC1002001U;
	vcpu->arch.sie_block->fac   = (int) (long) facilities;
	FUNC2(&vcpu->arch.ckc_timer, CLOCK_REALTIME, HRTIMER_MODE_ABS);
	FUNC4(&vcpu->arch.tasklet, kvm_s390_tasklet,
		     (unsigned long) vcpu);
	vcpu->arch.ckc_timer.function = kvm_s390_idle_wakeup;
	FUNC1(&vcpu->arch.cpu_id);
	vcpu->arch.cpu_id.version = 0xff;
	return 0;
}