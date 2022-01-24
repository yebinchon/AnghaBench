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
struct TYPE_3__ {unsigned long ptce_base; unsigned long* ptce_count; unsigned long* ptce_stride; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;

/* Variables and functions */
 TYPE_2__* current_vcpu ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

void FUNC4(void)
{
	int i, j;
	unsigned long flags, count0, count1;
	unsigned long stride0, stride1, addr;

	addr    = current_vcpu->arch.ptce_base;
	count0  = current_vcpu->arch.ptce_count[0];
	count1  = current_vcpu->arch.ptce_count[1];
	stride0 = current_vcpu->arch.ptce_stride[0];
	stride1 = current_vcpu->arch.ptce_stride[1];

	FUNC3(flags);
	for (i = 0; i < count0; ++i) {
		for (j = 0; j < count1; ++j) {
			FUNC0(addr);
			addr += stride1;
		}
		addr += stride0;
	}
	FUNC2(flags);
	FUNC1();          /* srlz.i implies srlz.d */
}