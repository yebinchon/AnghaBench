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
struct mxcmci_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/ * data; int /*<<< orphan*/ * cmd; int /*<<< orphan*/ * req; scalar_t__ base; } ;
struct mmc_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ MMC_REG_INT_CNTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mxcmci_host *host,
		struct mmc_request *req)
{
	FUNC1(0, host->base + MMC_REG_INT_CNTR);

	host->req = NULL;
	host->cmd = NULL;
	host->data = NULL;

	FUNC0(host->mmc, req);
}