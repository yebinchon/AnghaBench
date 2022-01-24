#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct ia64_pal_retval {int dummy; } ;
struct TYPE_3__ {scalar_t__ is_sn2; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ia64_pal_retval,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAL_FREQ_RATIOS ; 
 int /*<<< orphan*/  FUNC1 (struct ia64_pal_retval*) ; 

__attribute__((used)) static struct ia64_pal_retval FUNC2(struct kvm_vcpu *vcpu)
{
	struct ia64_pal_retval result;

	FUNC0(result, PAL_FREQ_RATIOS, 0, 0, 0);

	if (vcpu->kvm->arch.is_sn2)
		FUNC1(&result);

	return result;
}