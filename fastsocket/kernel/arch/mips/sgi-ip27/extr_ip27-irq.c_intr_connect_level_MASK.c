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
struct slice_data {int /*<<< orphan*/ * irq_enable_mask; } ;
typedef  int /*<<< orphan*/  nasid_t ;
struct TYPE_2__ {struct slice_data* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PI_INT_MASK0_A ; 
 int /*<<< orphan*/  PI_INT_MASK0_B ; 
 int /*<<< orphan*/  PI_INT_MASK1_A ; 
 int /*<<< orphan*/  PI_INT_MASK1_B ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* cpu_data ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(int cpu, int bit)
{
	nasid_t nasid = FUNC0(FUNC2(cpu));
	struct slice_data *si = cpu_data[cpu].data;

	FUNC4(bit, si->irq_enable_mask);

	if (!FUNC3(cpu)) {
		FUNC1(nasid, PI_INT_MASK0_A, si->irq_enable_mask[0]);
		FUNC1(nasid, PI_INT_MASK1_A, si->irq_enable_mask[1]);
	} else {
		FUNC1(nasid, PI_INT_MASK0_B, si->irq_enable_mask[0]);
		FUNC1(nasid, PI_INT_MASK1_B, si->irq_enable_mask[1]);
	}

	return 0;
}