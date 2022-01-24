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
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ soft_vnmi_blocked; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUEST_INTERRUPTIBILITY_INFO ; 
 int GUEST_INTR_STATE_MOV_SS ; 
 int GUEST_INTR_STATE_NMI ; 
 int GUEST_INTR_STATE_STI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu)
{
	if (!FUNC0() && FUNC1(vcpu)->soft_vnmi_blocked)
		return 0;

	return	!(FUNC2(GUEST_INTERRUPTIBILITY_INFO) &
		  (GUEST_INTR_STATE_MOV_SS | GUEST_INTR_STATE_STI
		   | GUEST_INTR_STATE_NMI));
}