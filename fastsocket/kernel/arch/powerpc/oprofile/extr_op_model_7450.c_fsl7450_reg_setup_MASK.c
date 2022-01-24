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
struct op_system_config {scalar_t__ enable_user; scalar_t__ enable_kernel; } ;
struct op_counter_config {int /*<<< orphan*/  event; scalar_t__ count; } ;

/* Variables and functions */
 int MMCR0_FCP ; 
 int MMCR0_FCS ; 
 int MMCR0_INIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int mmcr0_val ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int mmcr1_val ; 
 scalar_t__ mmcr2_val ; 
 int num_pmcs ; 
 scalar_t__* reset_value ; 

__attribute__((used)) static int FUNC6(struct op_counter_config *ctr,
			     struct op_system_config *sys,
			     int num_ctrs)
{
	int i;

	num_pmcs = num_ctrs;
	/* Our counters count up, and "count" refers to
	 * how much before the next interrupt, and we interrupt
	 * on overflow.  So we calculate the starting value
	 * which will give us "count" until overflow.
	 * Then we set the events on the enabled counters */
	for (i = 0; i < num_ctrs; ++i)
		reset_value[i] = 0x80000000UL - ctr[i].count;

	/* Set events for Counters 1 & 2 */
	mmcr0_val = MMCR0_INIT | FUNC0(ctr[0].event)
		| FUNC1(ctr[1].event);

	/* Setup user/kernel bits */
	if (sys->enable_kernel)
		mmcr0_val &= ~(MMCR0_FCS);

	if (sys->enable_user)
		mmcr0_val &= ~(MMCR0_FCP);

	/* Set events for Counters 3-6 */
	mmcr1_val = FUNC2(ctr[2].event)
		| FUNC3(ctr[3].event);
	if (num_ctrs > 4)
		mmcr1_val |= FUNC4(ctr[4].event)
			| FUNC5(ctr[5].event);

	mmcr2_val = 0;

	return 0;
}