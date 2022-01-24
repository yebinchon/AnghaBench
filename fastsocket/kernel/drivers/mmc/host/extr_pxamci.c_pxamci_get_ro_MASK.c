#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pxamci_host {TYPE_1__* pdata; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_ro ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  gpio_card_ro; scalar_t__ gpio_card_ro_invert; } ;

/* Variables and functions */
 int ENOSYS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 struct pxamci_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mmc_host *mmc)
{
	struct pxamci_host *host = FUNC3(mmc);

	if (host->pdata && FUNC1(host->pdata->gpio_card_ro)) {
		if (host->pdata->gpio_card_ro_invert)
			return !FUNC0(host->pdata->gpio_card_ro);
		else
			return FUNC0(host->pdata->gpio_card_ro);
	}
	if (host->pdata && host->pdata->get_ro)
		return !!host->pdata->get_ro(FUNC2(mmc));
	/*
	 * Board doesn't support read only detection; let the mmc core
	 * decide what to do.
	 */
	return -ENOSYS;
}