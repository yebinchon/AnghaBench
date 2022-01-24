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
struct mmci_host {unsigned int oldstat; int /*<<< orphan*/  timer; int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct mmci_host *host = (struct mmci_host *)data;
	unsigned int status = FUNC1(host->mmc);

	if (status ^ host->oldstat)
		FUNC0(host->mmc, 0);

	host->oldstat = status;
	FUNC2(&host->timer, jiffies + HZ);
}