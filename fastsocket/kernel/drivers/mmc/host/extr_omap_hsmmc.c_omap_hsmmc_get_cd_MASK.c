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
struct omap_hsmmc_host {int dummy; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int (* card_detect ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  card_detect_irq; } ;

/* Variables and functions */
 int ENOSYS ; 
 struct omap_hsmmc_host* FUNC0 (struct mmc_host*) ; 
 TYPE_1__ FUNC1 (struct omap_hsmmc_host*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mmc_host *mmc)
{
	struct omap_hsmmc_host *host = FUNC0(mmc);

	if (!FUNC1(host).card_detect)
		return -ENOSYS;
	return FUNC1(host).card_detect(FUNC1(host).card_detect_irq);
}