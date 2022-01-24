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
 int FD_CONFIGURE ; 
 scalar_t__ MORE_OUTPUT ; 
 int fifo_depth ; 
 scalar_t__ FUNC0 () ; 
 int no_fifo ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(void)
{
	/* Turn on FIFO */
	FUNC1(FD_CONFIGURE);
	if (FUNC0() != MORE_OUTPUT)
		return 0;
	FUNC1(0);
	FUNC1(0x10 | (no_fifo & 0x20) | (fifo_depth & 0xf));
	FUNC1(0);		/* pre-compensation from track
				   0 upwards */
	return 1;
}