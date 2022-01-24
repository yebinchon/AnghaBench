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
struct mmc_omap_host {scalar_t__ sg_len; int /*<<< orphan*/ * data; scalar_t__ dma_in_use; } ;
struct mmc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_omap_host*,struct mmc_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_omap_host*,int) ; 

__attribute__((used)) static void
FUNC2(struct mmc_omap_host *host, struct mmc_data *data)
{
	if (host->dma_in_use)
		FUNC0(host, data, 1);

	host->data = NULL;
	host->sg_len = 0;

	FUNC1(host, 10000);
}