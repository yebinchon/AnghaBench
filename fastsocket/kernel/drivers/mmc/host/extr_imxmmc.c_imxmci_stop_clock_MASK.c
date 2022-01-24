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
typedef  int u16 ;
struct imxmci_host {int /*<<< orphan*/  mmc; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ MMC_REG_STATUS ; 
 scalar_t__ MMC_REG_STR_STP_CLK ; 
 int STATUS_CARD_BUS_CLK_RUN ; 
 int STR_STP_CLK_START_CLK ; 
 int STR_STP_CLK_STOP_CLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct imxmci_host *host)
{
	int i = 0;
	u16 reg;

	reg = FUNC2(host->base + MMC_REG_STR_STP_CLK);
	FUNC3(reg & ~STR_STP_CLK_START_CLK, host->base + MMC_REG_STR_STP_CLK);
	while (i < 0x1000) {
		if (!(i & 0x7f)) {
			reg = FUNC2(host->base + MMC_REG_STR_STP_CLK);
			FUNC3(reg | STR_STP_CLK_STOP_CLK,
					host->base + MMC_REG_STR_STP_CLK);
		}

		reg = FUNC2(host->base + MMC_REG_STATUS);
		if (!(reg & STATUS_CARD_BUS_CLK_RUN)) {
			/* Check twice before cut */
			reg = FUNC2(host->base + MMC_REG_STATUS);
			if (!(reg & STATUS_CARD_BUS_CLK_RUN))
				return;
		}

		i++;
	}
	FUNC0(FUNC1(host->mmc), "imxmci_stop_clock blocked, no luck\n");
}