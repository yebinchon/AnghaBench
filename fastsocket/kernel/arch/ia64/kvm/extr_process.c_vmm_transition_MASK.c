#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ vpd; int /*<<< orphan*/  host; int /*<<< orphan*/  guest; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAL_VPS_RESTORE ; 
 int /*<<< orphan*/  PAL_VPS_SAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(struct kvm_vcpu *vcpu)
{
	FUNC0(PAL_VPS_SAVE, (unsigned long)vcpu->arch.vpd,
			1, 0, 0, 0, 0, 0);
	FUNC2(&vcpu->arch.guest, &vcpu->arch.host);
	FUNC0(PAL_VPS_RESTORE, (unsigned long)vcpu->arch.vpd,
						1, 0, 0, 0, 0, 0);
	FUNC1(vcpu);
}