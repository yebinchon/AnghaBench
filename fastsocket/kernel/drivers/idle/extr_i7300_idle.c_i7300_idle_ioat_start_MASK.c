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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ IOAT1_CHANCMD_OFFSET ; 
 int /*<<< orphan*/  IOAT_CHANCMD_START ; 
 scalar_t__ IOAT_CHANERR_OFFSET ; 
 scalar_t__ ioat_chanbase ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(void)
{
	u32 err;
	/* Clear error (due to circular descriptor pointer) */
	err = FUNC0(ioat_chanbase + IOAT_CHANERR_OFFSET);
	if (err)
		FUNC2(err, ioat_chanbase + IOAT_CHANERR_OFFSET);

	FUNC1(IOAT_CHANCMD_START, ioat_chanbase + IOAT1_CHANCMD_OFFSET);
	return 0;
}