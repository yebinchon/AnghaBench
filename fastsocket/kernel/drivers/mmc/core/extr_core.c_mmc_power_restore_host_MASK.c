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
struct mmc_host {TYPE_1__* bus_ops; scalar_t__ bus_dead; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* power_restore ) (struct mmc_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 

void FUNC4(struct mmc_host *host)
{
	FUNC0(host);

	if (!host->bus_ops || host->bus_dead || !host->bus_ops->power_restore) {
		FUNC1(host);
		return;
	}

	FUNC2(host);
	host->bus_ops->power_restore(host);

	FUNC1(host);
}