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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  MXC_CRMAP_AMCR ; 
 int /*<<< orphan*/  MXC_CRMAP_AMCR_SW_AP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(char mode, const char *cmd)
{
	u32 amcr;

	/* Reset the AP using CRM */
	amcr = FUNC0(MXC_CRMAP_AMCR);
	amcr &= ~MXC_CRMAP_AMCR_SW_AP;
	FUNC1(amcr, MXC_CRMAP_AMCR);

	FUNC3(10);
	FUNC2(0);
}