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
struct mmc_host {int sdio_irqs; int /*<<< orphan*/  sdio_irq_thread; int /*<<< orphan*/  sdio_irq_thread_abort; int /*<<< orphan*/  claimed; } ;
struct mmc_card {struct mmc_host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mmc_card *card)
{
	struct mmc_host *host = card->host;

	FUNC1(!host->claimed);
	FUNC0(host->sdio_irqs < 1);

	if (!--host->sdio_irqs) {
		FUNC2(&host->sdio_irq_thread_abort, 1);
		FUNC3(host->sdio_irq_thread);
	}

	return 0;
}