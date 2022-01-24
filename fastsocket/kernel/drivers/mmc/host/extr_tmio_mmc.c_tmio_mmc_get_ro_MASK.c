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
struct tmio_mmc_host {int dummy; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_STATUS ; 
 int TMIO_STAT_WRPROTECT ; 
 struct tmio_mmc_host* FUNC0 (struct mmc_host*) ; 
 int FUNC1 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mmc_host *mmc)
{
	struct tmio_mmc_host *host = FUNC0(mmc);

	return (FUNC1(host, CTL_STATUS) & TMIO_STAT_WRPROTECT) ? 0 : 1;
}