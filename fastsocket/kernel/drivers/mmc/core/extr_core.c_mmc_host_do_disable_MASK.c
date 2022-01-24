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
struct mmc_host {int en_dis_recurs; scalar_t__ enabled; int /*<<< orphan*/  disable; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* disable ) (struct mmc_host*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mmc_host*,int) ; 

__attribute__((used)) static int FUNC5(struct mmc_host *host, int lazy)
{
	if (host->ops->disable) {
		int err;

		host->en_dis_recurs = 1;
		err = host->ops->disable(host, lazy);
		host->en_dis_recurs = 0;

		if (err < 0) {
			FUNC3("%s: disable error %d\n",
				 FUNC0(host), err);
			return err;
		}
		if (err > 0) {
			unsigned long delay = FUNC2(err);

			FUNC1(&host->disable, delay);
		}
	}
	host->enabled = 0;
	return 0;
}