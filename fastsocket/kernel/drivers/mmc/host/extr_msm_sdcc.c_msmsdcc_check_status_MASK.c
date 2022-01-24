#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ function; } ;
struct msmsdcc_host {int eject; unsigned int oldstat; TYPE_2__ timer; int /*<<< orphan*/  mmc; TYPE_1__* plat; } ;
struct TYPE_3__ {unsigned int (* status ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(unsigned long data)
{
	struct msmsdcc_host *host = (struct msmsdcc_host *)data;
	unsigned int status;

	if (!host->plat->status) {
		FUNC0(host->mmc, 0);
		goto out;
	}

	status = host->plat->status(FUNC1(host->mmc));
	host->eject = !status;
	if (status ^ host->oldstat) {
		FUNC4("%s: Slot status change detected (%d -> %d)\n",
			FUNC2(host->mmc), host->oldstat, status);
		if (status)
			FUNC0(host->mmc, (5 * HZ) / 2);
		else
			FUNC0(host->mmc, 0);
	}

	host->oldstat = status;

out:
	if (host->timer.function)
		FUNC3(&host->timer, jiffies + HZ);
}