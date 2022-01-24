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
struct mmc_request {int /*<<< orphan*/  done; int /*<<< orphan*/ * done_data; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  complete ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  mmc_wait_done ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mmc_host *host, struct mmc_request *mrq)
{
	FUNC0(complete);

	mrq->done_data = &complete;
	mrq->done = mmc_wait_done;

	FUNC1(host, mrq);

	FUNC2(&complete);
}