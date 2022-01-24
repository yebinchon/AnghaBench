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
struct mmc_host {int /*<<< orphan*/  sdio_irqs; int /*<<< orphan*/  sdio_irq_thread; int /*<<< orphan*/  sdio_irq_thread_abort; int /*<<< orphan*/  claimed; } ;
struct mmc_card {struct mmc_host* host; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mmc_host*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  sdio_irq_thread ; 

__attribute__((used)) static int FUNC6(struct mmc_card *card)
{
	struct mmc_host *host = card->host;

	FUNC2(!host->claimed);

	if (!host->sdio_irqs++) {
		FUNC3(&host->sdio_irq_thread_abort, 0);
		host->sdio_irq_thread =
			FUNC4(sdio_irq_thread, host, "ksdioirqd/%s",
				FUNC5(host));
		if (FUNC0(host->sdio_irq_thread)) {
			int err = FUNC1(host->sdio_irq_thread);
			host->sdio_irqs--;
			return err;
		}
	}

	return 0;
}