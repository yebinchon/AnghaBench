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
struct sdhci_host {int flags; int quirks; int /*<<< orphan*/  lock; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int SDHCI_DEVICE_DEAD ; 
 int /*<<< orphan*/  SDHCI_PRESENT_STATE ; 
 int SDHCI_QUIRK_INVERTED_WRITE_PROTECT ; 
 int SDHCI_WRITE_PROTECT ; 
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 int FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct mmc_host *mmc)
{
	struct sdhci_host *host;
	unsigned long flags;
	int present;

	host = FUNC0(mmc);

	FUNC2(&host->lock, flags);

	if (host->flags & SDHCI_DEVICE_DEAD)
		present = 0;
	else
		present = FUNC1(host, SDHCI_PRESENT_STATE);

	FUNC3(&host->lock, flags);

	if (host->quirks & SDHCI_QUIRK_INVERTED_WRITE_PROTECT)
		return !!(present & SDHCI_WRITE_PROTECT);
	return !(present & SDHCI_WRITE_PROTECT);
}