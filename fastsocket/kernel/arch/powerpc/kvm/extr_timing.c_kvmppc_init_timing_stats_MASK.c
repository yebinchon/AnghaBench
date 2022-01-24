#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ tv64; } ;
struct TYPE_4__ {scalar_t__ tv64; } ;
struct TYPE_6__ {int last_exit_type; int* timing_min_duration; TYPE_2__ timing_last_enter; TYPE_1__ timing_exit; scalar_t__ timing_last_exit; scalar_t__* timing_sum_quad_duration; scalar_t__* timing_sum_duration; scalar_t__* timing_max_duration; scalar_t__* timing_count_type; } ;
struct kvm_vcpu {int /*<<< orphan*/  mutex; TYPE_3__ arch; } ;

/* Variables and functions */
 int __NUMBER_OF_KVM_EXIT_TYPES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct kvm_vcpu *vcpu)
{
	int i;

	/* pause guest execution to avoid concurrent updates */
	FUNC0();
	FUNC2(&vcpu->mutex);

	vcpu->arch.last_exit_type = 0xDEAD;
	for (i = 0; i < __NUMBER_OF_KVM_EXIT_TYPES; i++) {
		vcpu->arch.timing_count_type[i] = 0;
		vcpu->arch.timing_max_duration[i] = 0;
		vcpu->arch.timing_min_duration[i] = 0xFFFFFFFF;
		vcpu->arch.timing_sum_duration[i] = 0;
		vcpu->arch.timing_sum_quad_duration[i] = 0;
	}
	vcpu->arch.timing_last_exit = 0;
	vcpu->arch.timing_exit.tv64 = 0;
	vcpu->arch.timing_last_enter.tv64 = 0;

	FUNC3(&vcpu->mutex);
	FUNC1();
}