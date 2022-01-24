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
struct kvm_device_desc {scalar_t__ type; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_device_desc*,unsigned int) ; 
 scalar_t__ FUNC1 (struct kvm_device_desc*) ; 
 struct kvm_device_desc* kvm_devices ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned int i;
	struct kvm_device_desc *d;

	for (i = 0; i < PAGE_SIZE; i += FUNC1(d)) {
		d = kvm_devices + i;

		if (d->type == 0)
			break;

		FUNC0(d, i);
	}
}