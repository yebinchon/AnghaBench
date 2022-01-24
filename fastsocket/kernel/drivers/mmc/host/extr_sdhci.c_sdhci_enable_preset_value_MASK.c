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
typedef  int u16 ;
struct sdhci_host {scalar_t__ version; int /*<<< orphan*/  lock; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int SDHCI_CTRL_PRESET_VAL_ENABLE ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL2 ; 
 scalar_t__ SDHCI_SPEC_300 ; 
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 int FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct mmc_host *mmc, bool enable)
{
	struct sdhci_host *host;
	u16 ctrl;
	unsigned long flags;

	host = FUNC0(mmc);

	/* Host Controller v3.00 defines preset value registers */
	if (host->version < SDHCI_SPEC_300)
		return;

	FUNC3(&host->lock, flags);

	ctrl = FUNC1(host, SDHCI_HOST_CONTROL2);

	/*
	 * We only enable or disable Preset Value if they are not already
	 * enabled or disabled respectively. Otherwise, we bail out.
	 */
	if (enable && !(ctrl & SDHCI_CTRL_PRESET_VAL_ENABLE)) {
		ctrl |= SDHCI_CTRL_PRESET_VAL_ENABLE;
		FUNC2(host, ctrl, SDHCI_HOST_CONTROL2);
	} else if (!enable && (ctrl & SDHCI_CTRL_PRESET_VAL_ENABLE)) {
		ctrl &= ~SDHCI_CTRL_PRESET_VAL_ENABLE;
		FUNC2(host, ctrl, SDHCI_HOST_CONTROL2);
	}

	FUNC4(&host->lock, flags);
}