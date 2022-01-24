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
typedef  int uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (void const*) ; 
 scalar_t__ L1_CODE_LENGTH ; 
 scalar_t__ L1_CODE_START ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  dtest_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(const void *addr, uint64_t data)
{
	uint32_t cmd;
	unsigned long flags;

	if (addr >= (void *)(L1_CODE_START + L1_CODE_LENGTH))
		return;

	cmd = FUNC0(addr) | 2;             /* write */

	/*
	 * Writes to DTEST_DATA[0:1] need to be atomic with write to DTEST_COMMAND
	 * While in exception context - atomicity is guaranteed or double fault
	 */
	FUNC5(&dtest_lock, flags);

	FUNC3(data & 0xFFFFFFFF);
	FUNC4(data >> 32);

	/* use the builtin, since interrupts are already turned off */
	FUNC1();
	FUNC2(cmd);
	FUNC1();

	FUNC2(0);
	FUNC1();

	FUNC6(&dtest_lock, flags);
}