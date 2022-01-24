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
struct mmc_host {scalar_t__ bus_refs; int /*<<< orphan*/  lock; scalar_t__ bus_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct mmc_host *host)
{
	unsigned long flags;

	FUNC1(&host->lock, flags);
	host->bus_refs--;
	if ((host->bus_refs == 0) && host->bus_ops)
		FUNC0(host);
	FUNC2(&host->lock, flags);
}