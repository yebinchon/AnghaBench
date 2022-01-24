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
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  UNI_N_CLOCK_CNTL ; 
 int /*<<< orphan*/  UNI_N_CLOCK_CNTL_GMAC ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static long
FUNC6(struct device_node *node, long param, long value)
{
	unsigned long flags;

	FUNC0(flags);
	if (value)
		FUNC3(UNI_N_CLOCK_CNTL, UNI_N_CLOCK_CNTL_GMAC);
	else
		FUNC2(UNI_N_CLOCK_CNTL, UNI_N_CLOCK_CNTL_GMAC);
	(void)FUNC4(UNI_N_CLOCK_CNTL);
	FUNC1(flags);
	FUNC5(20);

	return 0;
}