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
struct mmc_host {struct mmc_card* card; } ;
struct TYPE_2__ {int rev; } ;
struct mmc_card {TYPE_1__ ext_csd; } ;

/* Variables and functions */
 int ENOSYS ; 
 int FUNC0 (struct mmc_host*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct mmc_host *host)
{
	struct mmc_card *card = host->card;
	int err = -ENOSYS;

	if (card && card->ext_csd.rev >= 3) {
		err = FUNC0(host, 1);
		if (err < 0)
			FUNC2("%s: Error %d while putting card into sleep",
				 FUNC1(host), err);
	}

	return err;
}