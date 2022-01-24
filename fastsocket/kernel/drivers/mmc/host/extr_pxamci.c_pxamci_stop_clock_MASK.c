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
struct pxamci_host {int /*<<< orphan*/  mmc; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ MMC_STAT ; 
 scalar_t__ MMC_STRPCL ; 
 int STAT_CLK_EN ; 
 int /*<<< orphan*/  STOP_CLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct pxamci_host *host)
{
	if (FUNC2(host->base + MMC_STAT) & STAT_CLK_EN) {
		unsigned long timeout = 10000;
		unsigned int v;

		FUNC4(STOP_CLOCK, host->base + MMC_STRPCL);

		do {
			v = FUNC2(host->base + MMC_STAT);
			if (!(v & STAT_CLK_EN))
				break;
			FUNC3(1);
		} while (timeout--);

		if (v & STAT_CLK_EN)
			FUNC0(FUNC1(host->mmc), "unable to stop clock\n");
	}
}