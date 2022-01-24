#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mmc_spi_host {int power_mode; int powerup_msecs; TYPE_2__* spi; TYPE_1__* pdata; } ;
struct mmc_ios {int power_mode; scalar_t__ clock; int /*<<< orphan*/  vdd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_5__ {int mode; scalar_t__ max_speed_hz; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* setpower ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
#define  MMC_POWER_OFF 129 
 int const MMC_POWER_ON ; 
#define  MMC_POWER_UP 128 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mmc_spi_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_spi_host*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct mmc_spi_host *host = FUNC2(mmc);

	if (host->power_mode != ios->power_mode) {
		int		canpower;

		canpower = host->pdata && host->pdata->setpower;

		FUNC0(&host->spi->dev, "mmc_spi: power %s (%d)%s\n",
				FUNC1(ios->power_mode),
				ios->vdd,
				canpower ? ", can switch" : "");

		/* switch power on/off if possible, accounting for
		 * max 250msec powerup time if needed.
		 */
		if (canpower) {
			switch (ios->power_mode) {
			case MMC_POWER_OFF:
			case MMC_POWER_UP:
				host->pdata->setpower(&host->spi->dev,
						ios->vdd);
				if (ios->power_mode == MMC_POWER_UP)
					FUNC4(host->powerup_msecs);
			}
		}

		/* See 6.4.1 in the simplified SD card physical spec 2.0 */
		if (ios->power_mode == MMC_POWER_ON)
			FUNC3(host);

		/* If powering down, ground all card inputs to avoid power
		 * delivery from data lines!  On a shared SPI bus, this
		 * will probably be temporary; 6.4.2 of the simplified SD
		 * spec says this must last at least 1msec.
		 *
		 *   - Clock low means CPOL 0, e.g. mode 0
		 *   - MOSI low comes from writing zero
		 *   - Chipselect is usually active low...
		 */
		if (canpower && ios->power_mode == MMC_POWER_OFF) {
			int mres;
			u8 nullbyte = 0;

			host->spi->mode &= ~(SPI_CPOL|SPI_CPHA);
			mres = FUNC5(host->spi);
			if (mres < 0)
				FUNC0(&host->spi->dev,
					"switch to SPI mode 0 failed\n");

			if (FUNC6(host->spi, &nullbyte, 1) < 0)
				FUNC0(&host->spi->dev,
					"put spi signals to low failed\n");

			/*
			 * Now clock should be low due to spi mode 0;
			 * MOSI should be low because of written 0x00;
			 * chipselect should be low (it is active low)
			 * power supply is off, so now MMC is off too!
			 *
			 * FIXME no, chipselect can be high since the
			 * device is inactive and SPI_CS_HIGH is clear...
			 */
			FUNC4(10);
			if (mres == 0) {
				host->spi->mode |= (SPI_CPOL|SPI_CPHA);
				mres = FUNC5(host->spi);
				if (mres < 0)
					FUNC0(&host->spi->dev,
						"switch back to SPI mode 3"
						" failed\n");
			}
		}

		host->power_mode = ios->power_mode;
	}

	if (host->spi->max_speed_hz != ios->clock && ios->clock != 0) {
		int		status;

		host->spi->max_speed_hz = ios->clock;
		status = FUNC5(host->spi);
		FUNC0(&host->spi->dev,
			"mmc_spi:  clock to %d Hz, %d\n",
			host->spi->max_speed_hz, status);
	}
}