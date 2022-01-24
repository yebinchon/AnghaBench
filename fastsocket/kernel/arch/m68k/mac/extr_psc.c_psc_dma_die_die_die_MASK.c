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
 scalar_t__ PSC_CMD_BASE ; 
 scalar_t__ PSC_CTL_BASE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	int i;

	FUNC0("Killing all PSC DMA channels...");
	for (i = 0 ; i < 9 ; i++) {
		FUNC1(PSC_CTL_BASE + (i << 4), 0x8800);
		FUNC1(PSC_CTL_BASE + (i << 4), 0x1000);
		FUNC1(PSC_CMD_BASE + (i << 5), 0x1100);
		FUNC1(PSC_CMD_BASE + (i << 5) + 0x10, 0x1100);
	}
	FUNC0("done!\n");
}