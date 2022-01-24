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
struct TYPE_4__ {unsigned int num_counters; } ;
struct TYPE_3__ {int /*<<< orphan*/ * counter; } ;

/* Variables and functions */
 TYPE_2__ op_model_mipsxx_ops ; 
 TYPE_1__ reg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void *args)
{
	unsigned int counters = op_model_mipsxx_ops.num_counters;

	switch (counters) {
	case 4:
		FUNC7(0);
		FUNC3(reg.counter[3]);
	case 3:
		FUNC6(0);
		FUNC2(reg.counter[2]);
	case 2:
		FUNC5(0);
		FUNC1(reg.counter[1]);
	case 1:
		FUNC4(0);
		FUNC0(reg.counter[0]);
	}
}