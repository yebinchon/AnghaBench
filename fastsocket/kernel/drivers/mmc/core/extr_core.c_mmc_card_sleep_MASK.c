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
struct mmc_host {TYPE_1__* bus_ops; int /*<<< orphan*/  bus_dead; } ;
struct TYPE_2__ {int (* sleep ) (struct mmc_host*) ;scalar_t__ awake; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int FUNC2 (struct mmc_host*) ; 

int FUNC3(struct mmc_host *host)
{
	int err = -ENOSYS;

	FUNC0(host);

	if (host->bus_ops && !host->bus_dead && host->bus_ops->awake)
		err = host->bus_ops->sleep(host);

	FUNC1(host);

	return err;
}