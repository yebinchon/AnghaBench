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
 unsigned int BUSY_STAT ; 
 unsigned int DRQ_STAT ; 
 unsigned int ECC_STAT ; 
 unsigned int ERR_STAT ; 
 int /*<<< orphan*/  HD_STATUS ; 
 int /*<<< orphan*/  SET_TIMER ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned int stat = FUNC1(HD_STATUS);

	if (stat & (BUSY_STAT|DRQ_STAT|ECC_STAT|ERR_STAT)) {
		FUNC0("unexpected interrupt", stat);
		SET_TIMER;
	}
}