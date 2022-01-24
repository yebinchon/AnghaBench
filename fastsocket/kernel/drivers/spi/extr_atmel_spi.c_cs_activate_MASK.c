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
typedef  int u32 ;
struct spi_device {unsigned int mode; int chip_select; int /*<<< orphan*/  dev; TYPE_1__* master; struct atmel_spi_device* controller_state; } ;
struct atmel_spi_device {int csr; int /*<<< orphan*/  npcs_pin; } ;
struct atmel_spi {int dummy; } ;
struct TYPE_2__ {int num_chipselect; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPOL ; 
 scalar_t__ CSR0 ; 
 int /*<<< orphan*/  MODFDIS ; 
 scalar_t__ MR ; 
 int /*<<< orphan*/  MSTR ; 
 int /*<<< orphan*/  PCS ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SPI_CPOL ; 
 unsigned int SPI_CS_HIGH ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (struct atmel_spi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct atmel_spi*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC8(struct atmel_spi *as, struct spi_device *spi)
{
	struct atmel_spi_device *asd = spi->controller_state;
	unsigned active = spi->mode & SPI_CS_HIGH;
	u32 mr;

	if (FUNC3()) {
		/*
		 * Always use CSR0. This ensures that the clock
		 * switches to the correct idle polarity before we
		 * toggle the CS.
		 */
		FUNC7(as, CSR0, asd->csr);
		FUNC7(as, MR, FUNC0(PCS, 0x0e) | FUNC2(MODFDIS)
				| FUNC2(MSTR));
		mr = FUNC6(as, MR);
		FUNC5(asd->npcs_pin, active);
	} else {
		u32 cpol = (spi->mode & SPI_CPOL) ? FUNC2(CPOL) : 0;
		int i;
		u32 csr;

		/* Make sure clock polarity is correct */
		for (i = 0; i < spi->master->num_chipselect; i++) {
			csr = FUNC6(as, CSR0 + 4 * i);
			if ((csr ^ cpol) & FUNC2(CPOL))
				FUNC7(as, CSR0 + 4 * i,
						csr ^ FUNC2(CPOL));
		}

		mr = FUNC6(as, MR);
		mr = FUNC1(PCS, ~(1 << spi->chip_select), mr);
		if (spi->chip_select != 0)
			FUNC5(asd->npcs_pin, active);
		FUNC7(as, MR, mr);
	}

	FUNC4(&spi->dev, "activate %u%s, mr %08x\n",
			asd->npcs_pin, active ? " (high)" : "",
			mr);
}