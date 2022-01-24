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
 int /*<<< orphan*/  DM365_SD1_CLK ; 
 int /*<<< orphan*/  DM365_SD1_CMD ; 
 int /*<<< orphan*/  DM365_SD1_DATA0 ; 
 int /*<<< orphan*/  DM365_SD1_DATA1 ; 
 int /*<<< orphan*/  DM365_SD1_DATA2 ; 
 int /*<<< orphan*/  DM365_SD1_DATA3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void)
{
	/*
	 * MMC/SD pins are multiplexed with GPIO and EMIF
	 * Further details are available at the DM365 ARM
	 * Subsystem Users Guide(sprufg5.pdf) pages 118, 128 - 131
	 */
	FUNC0(DM365_SD1_CLK);
	FUNC0(DM365_SD1_CMD);
	FUNC0(DM365_SD1_DATA3);
	FUNC0(DM365_SD1_DATA2);
	FUNC0(DM365_SD1_DATA1);
	FUNC0(DM365_SD1_DATA0);
}