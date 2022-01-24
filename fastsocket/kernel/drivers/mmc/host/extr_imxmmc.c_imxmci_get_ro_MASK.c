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
struct mmc_host {int dummy; } ;
struct imxmci_host {TYPE_1__* pdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_ro ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 struct imxmci_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mmc_host *mmc)
{
	struct imxmci_host *host = FUNC1(mmc);

	if (host->pdata && host->pdata->get_ro)
		return !!host->pdata->get_ro(FUNC0(mmc));
	/*
	 * Board doesn't support read only detection; let the mmc core
	 * decide what to do.
	 */
	return -ENOSYS;
}