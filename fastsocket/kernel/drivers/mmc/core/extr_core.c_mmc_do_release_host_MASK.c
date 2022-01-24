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
struct mmc_host {int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; int /*<<< orphan*/ * claimer; scalar_t__ claimed; scalar_t__ claim_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mmc_host *host)
{
	unsigned long flags;

	FUNC0(&host->lock, flags);
	if (--host->claim_cnt) {
		/* Release for nested claim */
		FUNC1(&host->lock, flags);
	} else {
		host->claimed = 0;
		host->claimer = NULL;
		FUNC1(&host->lock, flags);
		FUNC2(&host->wq);
	}
}