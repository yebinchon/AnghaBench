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
 int /*<<< orphan*/  PB1100_RST_VDDI ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

void FUNC1(void)
{
	/* Hit BCSR.RST_VDDI[SOFT_RESET] */
	FUNC0(0x00000000, PB1100_RST_VDDI);
}