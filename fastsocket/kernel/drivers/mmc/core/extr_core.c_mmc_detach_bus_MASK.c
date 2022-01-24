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
struct mmc_host {int bus_dead; int /*<<< orphan*/  lock; int /*<<< orphan*/  bus_ops; int /*<<< orphan*/  claimed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct mmc_host *host)
{
	unsigned long flags;

	FUNC0(!host);

	FUNC1(!host->claimed);
	FUNC1(!host->bus_ops);

	FUNC4(&host->lock, flags);

	host->bus_dead = 1;

	FUNC5(&host->lock, flags);

	FUNC3(host);

	FUNC2(host);
}