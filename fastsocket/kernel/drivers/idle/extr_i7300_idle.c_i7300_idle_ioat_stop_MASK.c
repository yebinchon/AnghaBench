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
typedef  int u64 ;

/* Variables and functions */
 scalar_t__ IOAT1_CHANCMD_OFFSET ; 
 scalar_t__ IOAT1_CHANSTS_OFFSET ; 
 int /*<<< orphan*/  IOAT_CHANCMD_RESET ; 
 int IOAT_CHANSTS_ACTIVE ; 
 int IOAT_CHANSTS_STATUS ; 
 int MAX_STOP_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ ioat_chanbase ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
	int i;
	u64 sts;

	for (i = 0; i < MAX_STOP_RETRIES; i++) {
		FUNC3(IOAT_CHANCMD_RESET,
			ioat_chanbase + IOAT1_CHANCMD_OFFSET);

		FUNC2(10);

		sts = FUNC1(ioat_chanbase + IOAT1_CHANSTS_OFFSET) &
			IOAT_CHANSTS_STATUS;

		if (sts != IOAT_CHANSTS_ACTIVE)
			break;

	}

	if (i == MAX_STOP_RETRIES) {
		FUNC0("failed to stop I/O AT after %d retries\n",
			MAX_STOP_RETRIES);
	}
}