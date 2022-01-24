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
 int MAPLE_2MBPS ; 
 int /*<<< orphan*/  MAPLE_DMAADDR ; 
 int /*<<< orphan*/  MAPLE_ENABLE ; 
 int MAPLE_MAGIC ; 
 int /*<<< orphan*/  MAPLE_RESET ; 
 int /*<<< orphan*/  MAPLE_SPEED ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MAPLE_TRIGTYPE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maple_sendbuf ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC2(MAPLE_MAGIC, MAPLE_RESET);
	/* set trig type to 0 for software trigger, 1 for hardware (VBLANK) */
	FUNC2(1, MAPLE_TRIGTYPE);
	/*
	* Maple system register
	* bits 31 - 16	timeout in units of 20nsec
	* bit 12	hard trigger - set 0 to keep responding to VBLANK
	* bits 9 - 8	set 00 for 2 Mbps, 01 for 1 Mbps
	* bits 3 - 0	delay (in 1.3ms) between VBLANK and start of DMA
	* max delay is 11
	*/
	FUNC2(MAPLE_2MBPS | FUNC0(0xFFFF), MAPLE_SPEED);
	FUNC2(FUNC1(maple_sendbuf), MAPLE_DMAADDR);
	FUNC2(1, MAPLE_ENABLE);
}