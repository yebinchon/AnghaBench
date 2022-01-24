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
struct spi_imx_data {int* chipselect; } ;
struct spi_device {size_t chip_select; int mode; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int BITBANG_CS_INACTIVE ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 struct spi_imx_data* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct spi_device *spi, int is_active)
{
	struct spi_imx_data *spi_imx = FUNC1(spi->master);
	int gpio = spi_imx->chipselect[spi->chip_select];
	int active = is_active != BITBANG_CS_INACTIVE;
	int dev_is_lowactive = !(spi->mode & SPI_CS_HIGH);

	if (gpio < 0)
		return;

	FUNC0(gpio, dev_is_lowactive ^ active);
}