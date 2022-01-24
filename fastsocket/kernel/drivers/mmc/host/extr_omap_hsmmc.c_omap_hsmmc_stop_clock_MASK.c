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
struct omap_hsmmc_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int CEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYSCTL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct omap_hsmmc_host *host)
{
	FUNC1(host->base, SYSCTL,
		FUNC0(host->base, SYSCTL) & ~CEN);
	if ((FUNC0(host->base, SYSCTL) & CEN) != 0x0)
		FUNC2(FUNC3(host->mmc), "MMC Clock is not stoped\n");
}