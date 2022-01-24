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
struct TYPE_2__ {unsigned long ptce_base; unsigned long* ptce_count; unsigned long* ptce_stride; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* local_cpu_data ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

void
FUNC4 (void)
{
	unsigned long i, j, flags, count0, count1, stride0, stride1, addr;

	addr    = local_cpu_data->ptce_base;
	count0  = local_cpu_data->ptce_count[0];
	count1  = local_cpu_data->ptce_count[1];
	stride0 = local_cpu_data->ptce_stride[0];
	stride1 = local_cpu_data->ptce_stride[1];

	FUNC3(flags);
	for (i = 0; i < count0; ++i) {
		for (j = 0; j < count1; ++j) {
			FUNC0(addr);
			addr += stride1;
		}
		addr += stride0;
	}
	FUNC2(flags);
	FUNC1();			/* srlz.i implies srlz.d */
}