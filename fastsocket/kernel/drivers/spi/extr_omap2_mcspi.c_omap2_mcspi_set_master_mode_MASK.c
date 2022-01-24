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
struct spi_master {int bus_num; } ;
struct TYPE_2__ {int /*<<< orphan*/  modulctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OMAP2_MCSPI_MODULCTRL ; 
 int /*<<< orphan*/  OMAP2_MCSPI_MODULCTRL_MS ; 
 int /*<<< orphan*/  OMAP2_MCSPI_MODULCTRL_SINGLE ; 
 int /*<<< orphan*/  OMAP2_MCSPI_MODULCTRL_STEST ; 
 int /*<<< orphan*/  FUNC1 (struct spi_master*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_master*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* omap2_mcspi_ctx ; 

__attribute__((used)) static void FUNC3(struct spi_master *master)
{
	u32 l;

	/* setup when switching from (reset default) slave mode
	 * to single-channel master mode
	 */
	l = FUNC1(master, OMAP2_MCSPI_MODULCTRL);
	FUNC0(l, OMAP2_MCSPI_MODULCTRL_STEST, 0);
	FUNC0(l, OMAP2_MCSPI_MODULCTRL_MS, 0);
	FUNC0(l, OMAP2_MCSPI_MODULCTRL_SINGLE, 1);
	FUNC2(master, OMAP2_MCSPI_MODULCTRL, l);

	omap2_mcspi_ctx[master->bus_num - 1].modulctrl = l;
}