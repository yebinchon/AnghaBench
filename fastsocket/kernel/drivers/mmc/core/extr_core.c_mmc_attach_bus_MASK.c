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
struct mmc_host {int bus_ops; int bus_refs; int /*<<< orphan*/  lock; scalar_t__ bus_dead; int /*<<< orphan*/  claimed; } ;
struct mmc_bus_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct mmc_host *host, const struct mmc_bus_ops *ops)
{
	unsigned long flags;

	FUNC0(!host);
	FUNC0(!ops);

	FUNC1(!host->claimed);

	FUNC2(&host->lock, flags);

	FUNC0(host->bus_ops);
	FUNC0(host->bus_refs);

	host->bus_ops = ops;
	host->bus_refs = 1;
	host->bus_dead = 0;

	FUNC3(&host->lock, flags);
}