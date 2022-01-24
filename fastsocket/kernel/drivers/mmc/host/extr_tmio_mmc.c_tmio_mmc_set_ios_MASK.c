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
struct mmc_ios {int power_mode; int bus_width; int /*<<< orphan*/  clock; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNF_PWR_CTL_2 ; 
 int /*<<< orphan*/  CTL_SD_MEM_CARD_OPT ; 
#define  MMC_BUS_WIDTH_1 132 
#define  MMC_BUS_WIDTH_4 131 
#define  MMC_POWER_OFF 130 
#define  MMC_POWER_ON 129 
#define  MMC_POWER_UP 128 
 struct tmio_mmc_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct tmio_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tmio_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct tmio_mmc_host *host = FUNC0(mmc);

	if (ios->clock)
		FUNC5(host, ios->clock);

	/* Power sequence - OFF -> ON -> UP */
	switch (ios->power_mode) {
	case MMC_POWER_OFF: /* power down SD bus */
		FUNC1(host, CNF_PWR_CTL_2, 0x00);
		FUNC4(host);
		break;
	case MMC_POWER_ON: /* power up SD bus */

		FUNC1(host, CNF_PWR_CTL_2, 0x02);
		break;
	case MMC_POWER_UP: /* start bus clock */
		FUNC3(host);
		break;
	}

	switch (ios->bus_width) {
	case MMC_BUS_WIDTH_1:
		FUNC2(host, CTL_SD_MEM_CARD_OPT, 0x80e0);
	break;
	case MMC_BUS_WIDTH_4:
		FUNC2(host, CTL_SD_MEM_CARD_OPT, 0x00e0);
	break;
	}

	/* Let things settle. delay taken from winCE driver */
	FUNC6(140);
}