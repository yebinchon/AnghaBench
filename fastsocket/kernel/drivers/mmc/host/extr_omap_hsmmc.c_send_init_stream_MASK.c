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
struct omap_hsmmc_host {int /*<<< orphan*/  irq; int /*<<< orphan*/  base; scalar_t__ protect_card; } ;

/* Variables and functions */
 int CC ; 
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  CON ; 
 int INIT_STREAM ; 
 int INIT_STREAM_CMD ; 
 int /*<<< orphan*/  MMC_TIMEOUT_MS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STAT ; 
 int STAT_CLEAR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct omap_hsmmc_host *host)
{
	int reg = 0;
	unsigned long timeout;

	if (host->protect_card)
		return;

	FUNC2(host->irq);
	FUNC1(host->base, CON,
		FUNC0(host->base, CON) | INIT_STREAM);
	FUNC1(host->base, CMD, INIT_STREAM_CMD);

	timeout = jiffies + FUNC4(MMC_TIMEOUT_MS);
	while ((reg != CC) && FUNC5(jiffies, timeout))
		reg = FUNC0(host->base, STAT) & CC;

	FUNC1(host->base, CON,
		FUNC0(host->base, CON) & ~INIT_STREAM);

	FUNC1(host->base, STAT, STAT_CLEAR);
	FUNC0(host->base, STAT);

	FUNC3(host->irq);
}