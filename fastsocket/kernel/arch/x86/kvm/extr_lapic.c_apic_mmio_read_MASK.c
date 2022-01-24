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
typedef  scalar_t__ u32 ;
struct kvm_lapic {scalar_t__ base_address; } ;
struct kvm_io_device {int dummy; } ;
typedef  scalar_t__ gpa_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_lapic*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_lapic*,scalar_t__,int,void*) ; 
 struct kvm_lapic* FUNC2 (struct kvm_io_device*) ; 

__attribute__((used)) static int FUNC3(struct kvm_io_device *this,
			   gpa_t address, int len, void *data)
{
	struct kvm_lapic *apic = FUNC2(this);
	u32 offset = address - apic->base_address;

	if (!FUNC0(apic, address))
		return -EOPNOTSUPP;

	FUNC1(apic, offset, len, data);

	return 0;
}