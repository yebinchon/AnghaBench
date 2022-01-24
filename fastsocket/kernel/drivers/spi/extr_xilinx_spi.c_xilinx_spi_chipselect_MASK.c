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
struct xilinx_spi {scalar_t__ regs; } ;
struct spi_device {int mode; int chip_select; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int BITBANG_CS_ACTIVE ; 
 int BITBANG_CS_INACTIVE ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int XSPI_CR_CPHA ; 
 int XSPI_CR_CPOL ; 
 int XSPI_CR_MODE_MASK ; 
 scalar_t__ XSPI_CR_OFFSET ; 
 scalar_t__ XSPI_SSR_OFFSET ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 struct xilinx_spi* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct spi_device *spi, int is_on)
{
	struct xilinx_spi *xspi = FUNC3(spi->master);

	if (is_on == BITBANG_CS_INACTIVE) {
		/* Deselect the slave on the SPI bus */
		FUNC2(xspi->regs + XSPI_SSR_OFFSET, 0xffff);
	} else if (is_on == BITBANG_CS_ACTIVE) {
		/* Set the SPI clock phase and polarity */
		u16 cr = FUNC0(xspi->regs + XSPI_CR_OFFSET)
			 & ~XSPI_CR_MODE_MASK;
		if (spi->mode & SPI_CPHA)
			cr |= XSPI_CR_CPHA;
		if (spi->mode & SPI_CPOL)
			cr |= XSPI_CR_CPOL;
		FUNC1(xspi->regs + XSPI_CR_OFFSET, cr);

		/* We do not check spi->max_speed_hz here as the SPI clock
		 * frequency is not software programmable (the IP block design
		 * parameter)
		 */

		/* Activate the chip select */
		FUNC2(xspi->regs + XSPI_SSR_OFFSET,
			 ~(0x0001 << spi->chip_select));
	}
}