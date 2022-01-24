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
struct spi_imx_data {scalar_t__ base; int /*<<< orphan*/  spi_clk; } ;
struct spi_imx_config {int bpw; int mode; int cs; int /*<<< orphan*/  speed_hz; } ;

/* Variables and functions */
 int MX31_CSPICTRL_BC_SHIFT ; 
 int MX31_CSPICTRL_CS_SHIFT ; 
 unsigned int MX31_CSPICTRL_DR_SHIFT ; 
 unsigned int MX31_CSPICTRL_ENABLE ; 
 unsigned int MX31_CSPICTRL_MASTER ; 
 unsigned int MX31_CSPICTRL_PHA ; 
 unsigned int MX31_CSPICTRL_POL ; 
 unsigned int MX31_CSPICTRL_SSCTL ; 
 unsigned int MX31_CSPICTRL_SSPOL ; 
 int MX35_CSPICTRL_BL_SHIFT ; 
 int MX35_CSPICTRL_CS_SHIFT ; 
 scalar_t__ MXC_CSPICTRL ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct spi_imx_data *spi_imx,
		struct spi_imx_config *config)
{
	unsigned int reg = MX31_CSPICTRL_ENABLE | MX31_CSPICTRL_MASTER;

	reg |= FUNC2(spi_imx->spi_clk, config->speed_hz) <<
		MX31_CSPICTRL_DR_SHIFT;

	if (FUNC0())
		reg |= (config->bpw - 1) << MX31_CSPICTRL_BC_SHIFT;
	else if (FUNC1()) {
		reg |= (config->bpw - 1) << MX35_CSPICTRL_BL_SHIFT;
		reg |= MX31_CSPICTRL_SSCTL;
	}

	if (config->mode & SPI_CPHA)
		reg |= MX31_CSPICTRL_PHA;
	if (config->mode & SPI_CPOL)
		reg |= MX31_CSPICTRL_POL;
	if (config->mode & SPI_CS_HIGH)
		reg |= MX31_CSPICTRL_SSPOL;
	if (config->cs < 0) {
		if (FUNC0())
			reg |= (config->cs + 32) << MX31_CSPICTRL_CS_SHIFT;
		else if (FUNC1())
			reg |= (config->cs + 32) << MX35_CSPICTRL_CS_SHIFT;
	}

	FUNC3(reg, spi_imx->base + MXC_CSPICTRL);

	return 0;
}