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
typedef  int /*<<< orphan*/  u32 ;
struct mmc_host {TYPE_1__* card; } ;
struct TYPE_2__ {int rca; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MMC_SEND_CID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct mmc_host*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(struct mmc_host *host, u32 *cid)
{
	int ret, i;

	if (!FUNC1(host)) {
		if (!host->card)
			return -EINVAL;
		return FUNC3(host, host->card->rca << 16,
				cid, MMC_SEND_CID);
	}

	ret = FUNC2(NULL, host, MMC_SEND_CID, cid, 16);
	if (ret)
		return ret;

	for (i = 0;i < 4;i++)
		cid[i] = FUNC0(cid[i]);

	return 0;
}