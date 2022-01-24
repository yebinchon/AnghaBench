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
struct s3cmci_host {int real_rate; int /*<<< orphan*/  bus_width; scalar_t__ base; TYPE_1__* pdata; int /*<<< orphan*/  is2440; } ;
struct mmc_ios {int power_mode; int clock; int /*<<< orphan*/  bus_width; int /*<<< orphan*/  vdd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_power ) (int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
#define  MMC_POWER_OFF 130 
#define  MMC_POWER_ON 129 
#define  MMC_POWER_UP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  S3C2410_GPE10_SDDAT3 ; 
 int /*<<< orphan*/  S3C2410_GPE5_SDCLK ; 
 int /*<<< orphan*/  S3C2410_GPE6_SDCMD ; 
 int /*<<< orphan*/  S3C2410_GPE7_SDDAT0 ; 
 int /*<<< orphan*/  S3C2410_GPE8_SDDAT1 ; 
 int /*<<< orphan*/  S3C2410_GPE9_SDDAT2 ; 
 scalar_t__ S3C2410_SDICON ; 
 int /*<<< orphan*/  S3C2410_SDICON_CLOCKTYPE ; 
 int /*<<< orphan*/  S3C2410_SDICON_FIFORESET ; 
 int /*<<< orphan*/  S3C2440_SDICON_SDRESET ; 
 int /*<<< orphan*/  FUNC1 (struct s3cmci_host*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  dbg_conf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct s3cmci_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct s3cmci_host*,struct mmc_ios*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct s3cmci_host *host = FUNC3(mmc);
	u32 mci_con;

	/* Set the power state */

	mci_con = FUNC4(host->base + S3C2410_SDICON);

	switch (ios->power_mode) {
	case MMC_POWER_ON:
	case MMC_POWER_UP:
		FUNC5(FUNC0(5), S3C2410_GPE5_SDCLK);
		FUNC5(FUNC0(6), S3C2410_GPE6_SDCMD);
		FUNC5(FUNC0(7), S3C2410_GPE7_SDDAT0);
		FUNC5(FUNC0(8), S3C2410_GPE8_SDDAT1);
		FUNC5(FUNC0(9), S3C2410_GPE9_SDDAT2);
		FUNC5(FUNC0(10), S3C2410_GPE10_SDDAT3);

		if (host->pdata->set_power)
			host->pdata->set_power(ios->power_mode, ios->vdd);

		if (!host->is2440)
			mci_con |= S3C2410_SDICON_FIFORESET;

		break;

	case MMC_POWER_OFF:
	default:
		FUNC2(FUNC0(5), 0);

		if (host->is2440)
			mci_con |= S3C2440_SDICON_SDRESET;

		if (host->pdata->set_power)
			host->pdata->set_power(ios->power_mode, ios->vdd);

		break;
	}

	FUNC6(host, ios);

	/* Set CLOCK_ENABLE */
	if (ios->clock)
		mci_con |= S3C2410_SDICON_CLOCKTYPE;
	else
		mci_con &= ~S3C2410_SDICON_CLOCKTYPE;

	FUNC9(mci_con, host->base + S3C2410_SDICON);

	if ((ios->power_mode == MMC_POWER_ON) ||
	    (ios->power_mode == MMC_POWER_UP)) {
		FUNC1(host, dbg_conf, "running at %lukHz (requested: %ukHz).\n",
			host->real_rate/1000, ios->clock/1000);
	} else {
		FUNC1(host, dbg_conf, "powered down.\n");
	}

	host->bus_width = ios->bus_width;
}