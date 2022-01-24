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
struct TYPE_2__ {scalar_t__ launched; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (long) ; 
 int /*<<< orphan*/  FUNC5 (long) ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu)
{
	int r;
	long psr;
	FUNC5(psr);
	r = FUNC2(vcpu);
	FUNC4(psr);
	if (r)
		goto fail;

	vcpu->arch.launched = 0;
	FUNC1(vcpu);
	r = FUNC0(vcpu);
	if (r)
		goto fail;

	FUNC3(vcpu);
	r = 0;
fail:
	return r;
}