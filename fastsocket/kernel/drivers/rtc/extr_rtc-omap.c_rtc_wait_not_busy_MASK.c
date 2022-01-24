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
typedef  int u8 ;

/* Variables and functions */
 scalar_t__ OMAP_RTC_STATUS_BUSY ; 
 int /*<<< orphan*/  OMAP_RTC_STATUS_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(void)
{
	int	count = 0;
	u8	status;

	/* BUSY may stay active for 1/32768 second (~30 usec) */
	for (count = 0; count < 50; count++) {
		status = FUNC0(OMAP_RTC_STATUS_REG);
		if ((status & (u8)OMAP_RTC_STATUS_BUSY) == 0)
			break;
		FUNC1(1);
	}
	/* now we have ~15 usec to read/write various registers */
}