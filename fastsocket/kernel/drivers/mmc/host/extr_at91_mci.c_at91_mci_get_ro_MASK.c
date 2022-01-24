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
struct at91mci_host {TYPE_1__* board; } ;
struct TYPE_2__ {scalar_t__ wp_pin; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct at91mci_host* FUNC1 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC2(struct mmc_host *mmc)
{
	struct at91mci_host *host = FUNC1(mmc);

	if (host->board->wp_pin)
		return !!FUNC0(host->board->wp_pin);
	/*
	 * Board doesn't support read only detection; let the mmc core
	 * decide what to do.
	 */
	return -ENOSYS;
}