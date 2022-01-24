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
 int RTMCR ; 
 int RTSCR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 

void FUNC1(void)
{
	unsigned int clock;
	u8 mins, secs;

	mins = RTMCR;
	secs = RTSCR;

	clock = ((mins & 0xf0) >> 4);
	clock *= 10;
	clock += (mins & 0x0f);
	clock *= 6;

	clock += ((secs & 0xf0) >> 4);
	clock *= 10;
	clock += (secs & 0x0f);

	FUNC0(clock, 0);
}