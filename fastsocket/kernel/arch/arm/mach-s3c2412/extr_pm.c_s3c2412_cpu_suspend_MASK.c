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

/* Variables and functions */
 int /*<<< orphan*/  S3C2412_PWRCFG ; 
 unsigned long S3C2412_PWRCFG_STANDBYWFI_SLEEP ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned long tmp;

	FUNC2();

	/* set our standby method to sleep */

	tmp = FUNC0(S3C2412_PWRCFG);
	tmp |= S3C2412_PWRCFG_STANDBYWFI_SLEEP;
	FUNC1(tmp, S3C2412_PWRCFG);

	FUNC3();
}