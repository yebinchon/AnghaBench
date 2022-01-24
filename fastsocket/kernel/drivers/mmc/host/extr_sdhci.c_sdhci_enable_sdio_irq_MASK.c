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
struct sdhci_host {int flags; int /*<<< orphan*/  lock; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int SDHCI_DEVICE_DEAD ; 
 int /*<<< orphan*/  SDHCI_INT_CARD_INT ; 
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct mmc_host *mmc, int enable)
{
	struct sdhci_host *host;
	unsigned long flags;

	host = FUNC0(mmc);

	FUNC4(&host->lock, flags);

	if (host->flags & SDHCI_DEVICE_DEAD)
		goto out;

	if (enable)
		FUNC3(host, SDHCI_INT_CARD_INT);
	else
		FUNC2(host, SDHCI_INT_CARD_INT);
out:
	FUNC1();

	FUNC5(&host->lock, flags);
}