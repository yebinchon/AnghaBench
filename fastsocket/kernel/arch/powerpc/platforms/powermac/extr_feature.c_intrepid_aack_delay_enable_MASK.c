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
struct device_node {int dummy; } ;

/* Variables and functions */
 long ENODEV ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  UNI_N_AACK_DELAY ; 
 int /*<<< orphan*/  UNI_N_AACK_DELAY_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int uninorth_rev ; 

__attribute__((used)) static long
FUNC4(struct device_node *node, long param, long value)
{
	unsigned long flags;

	if (uninorth_rev < 0xd2)
		return -ENODEV;

	FUNC0(flags);
	if (param)
		FUNC3(UNI_N_AACK_DELAY, UNI_N_AACK_DELAY_ENABLE);
	else
		FUNC2(UNI_N_AACK_DELAY, UNI_N_AACK_DELAY_ENABLE);
	FUNC1(flags);

	return 0;
}