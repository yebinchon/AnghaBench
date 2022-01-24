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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MSR_IA32_APERF ; 
 int /*<<< orphan*/  MSR_IA32_MPERF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(void)
{
	/* Check that all the msr's we are using are valid. */
	u64 aperf, mperf, tmp;

	FUNC3(MSR_IA32_APERF, aperf);
	FUNC3(MSR_IA32_MPERF, mperf);

	if (!FUNC1() ||
		!FUNC0() ||
		!FUNC2())
		return -ENODEV;

	FUNC3(MSR_IA32_APERF, tmp);
	if (!(tmp - aperf))
		return -ENODEV;

	FUNC3(MSR_IA32_MPERF, tmp);
	if (!(tmp - mperf))
		return -ENODEV;

	return 0;
}