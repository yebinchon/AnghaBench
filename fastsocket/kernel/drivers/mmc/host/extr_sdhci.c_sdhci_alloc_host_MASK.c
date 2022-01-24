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
struct sdhci_host {struct mmc_host* mmc; } ;
struct mmc_host {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct sdhci_host* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mmc_host* FUNC2 (int,struct device*) ; 
 struct sdhci_host* FUNC3 (struct mmc_host*) ; 

struct sdhci_host *FUNC4(struct device *dev,
	size_t priv_size)
{
	struct mmc_host *mmc;
	struct sdhci_host *host;

	FUNC1(dev == NULL);

	mmc = FUNC2(sizeof(struct sdhci_host) + priv_size, dev);
	if (!mmc)
		return FUNC0(-ENOMEM);

	host = FUNC3(mmc);
	host->mmc = mmc;

	return host;
}