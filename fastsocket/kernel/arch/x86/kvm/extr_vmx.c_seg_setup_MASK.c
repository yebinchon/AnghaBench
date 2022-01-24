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
struct kvm_vmx_segment_field {int /*<<< orphan*/  ar_bytes; int /*<<< orphan*/  limit; int /*<<< orphan*/  base; int /*<<< orphan*/  selector; } ;

/* Variables and functions */
 int VCPU_SREG_CS ; 
 scalar_t__ enable_unrestricted_guest ; 
 struct kvm_vmx_segment_field* kvm_vmx_segment_fields ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int seg)
{
	struct kvm_vmx_segment_field *sf = &kvm_vmx_segment_fields[seg];
	unsigned int ar;

	FUNC0(sf->selector, 0);
	FUNC2(sf->base, 0);
	FUNC1(sf->limit, 0xffff);
	if (enable_unrestricted_guest) {
		ar = 0x93;
		if (seg == VCPU_SREG_CS)
			ar |= 0x08; /* code segment */
	} else
		ar = 0xf3;

	FUNC1(sf->ar_bytes, ar);
}