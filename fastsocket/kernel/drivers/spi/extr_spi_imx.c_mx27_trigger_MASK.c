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
struct spi_imx_data {scalar_t__ base; } ;

/* Variables and functions */
 unsigned int MX27_CSPICTRL_XCH ; 
 scalar_t__ MXC_CSPICTRL ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct spi_imx_data *spi_imx)
{
	unsigned int reg;

	reg = FUNC0(spi_imx->base + MXC_CSPICTRL);
	reg |= MX27_CSPICTRL_XCH;
	FUNC1(reg, spi_imx->base + MXC_CSPICTRL);
}