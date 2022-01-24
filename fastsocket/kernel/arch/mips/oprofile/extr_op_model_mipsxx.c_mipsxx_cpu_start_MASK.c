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
struct TYPE_3__ {int* control; } ;

/* Variables and functions */
 int WHAT ; 
 TYPE_2__ op_model_mipsxx_ops ; 
 TYPE_1__ reg ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void *args)
{
	unsigned int counters = op_model_mipsxx_ops.num_counters;

	switch (counters) {
	case 4:
		FUNC3(WHAT | reg.control[3]);
	case 3:
		FUNC2(WHAT | reg.control[2]);
	case 2:
		FUNC1(WHAT | reg.control[1]);
	case 1:
		FUNC0(WHAT | reg.control[0]);
	}
}