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
struct mmc_request {scalar_t__ stop; } ;
struct mmc_data {int dummy; } ;
struct imxmci_host {int /*<<< orphan*/  mmc; struct mmc_request* req; struct mmc_data* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct imxmci_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct imxmci_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct imxmci_host*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct imxmci_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct imxmci_host *host, unsigned int stat)
{
	struct mmc_data *data = host->data;
	int data_error;

	if (!data)
		return 0;

	data_error = FUNC1(host, stat);

	if (host->req->stop) {
		FUNC4(host);
		FUNC3(host, host->req->stop, 0);
	} else {
		struct mmc_request *req;
		req = host->req;
		if (req)
			FUNC2(host, req);
		else
			FUNC0(FUNC5(host->mmc), "imxmci_data_done: no request to finish\n");
	}

	return 1;
}