#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kvm_vcpu {int dummy; } ;
struct ia64_pal_retval {int status; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,unsigned long*,unsigned long*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  remote_pal_prefetch_visibility ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static struct ia64_pal_retval FUNC3(struct kvm_vcpu *vcpu)
{
	struct ia64_pal_retval result = {0, 0, 0, 0};
	unsigned long in0, in1, in2, in3;
	FUNC1(vcpu, &in0, &in1, &in2, &in3);
	result.status = FUNC0(in1);
	if (result.status == 0) {
		/* Must be performed on all remote processors
		in the coherence domain. */
		FUNC2(remote_pal_prefetch_visibility,
					(void *)in1, 1);
		/* Unnecessary on remote processor for other vcpus!*/
		result.status = 1;
	}
	return result;
}