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
struct sdhci_host {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_NEEDS_RETUNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct sdhci_host *host;
	unsigned long flags;

	host = (struct sdhci_host *)data;

	FUNC0(&host->lock, flags);

	host->flags |= SDHCI_NEEDS_RETUNING;

	FUNC1(&host->lock, flags);
}