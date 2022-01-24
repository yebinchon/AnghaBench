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
typedef  int u16 ;
struct davinci_i2c_platform_data {int bus_freq; int bus_delay; } ;
struct davinci_i2c_dev {TYPE_1__* dev; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {struct davinci_i2c_platform_data* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAVINCI_I2C_CLKH_REG ; 
 int /*<<< orphan*/  DAVINCI_I2C_CLKL_REG ; 
 int /*<<< orphan*/  DAVINCI_I2C_IMR_REG ; 
 int /*<<< orphan*/  DAVINCI_I2C_MDR_IRS ; 
 int /*<<< orphan*/  DAVINCI_I2C_MDR_REG ; 
 int /*<<< orphan*/  DAVINCI_I2C_OAR_REG ; 
 int /*<<< orphan*/  DAVINCI_I2C_PSC_REG ; 
 int I2C_DAVINCI_INTR_ALL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct davinci_i2c_platform_data davinci_i2c_platform_data_default ; 
 int FUNC2 (struct davinci_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct davinci_i2c_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int,...) ; 

__attribute__((used)) static int FUNC5(struct davinci_i2c_dev *dev)
{
	struct davinci_i2c_platform_data *pdata = dev->dev->platform_data;
	u16 psc;
	u32 clk;
	u32 d;
	u32 clkh;
	u32 clkl;
	u32 input_clock = FUNC1(dev->clk);
	u16 w;

	if (!pdata)
		pdata = &davinci_i2c_platform_data_default;

	/* put I2C into reset */
	w = FUNC2(dev, DAVINCI_I2C_MDR_REG);
	FUNC0(w, DAVINCI_I2C_MDR_IRS, 0);
	FUNC3(dev, DAVINCI_I2C_MDR_REG, w);

	/* NOTE: I2C Clock divider programming info
	 * As per I2C specs the following formulas provide prescaler
	 * and low/high divider values
	 * input clk --> PSC Div -----------> ICCL/H Div --> output clock
	 *                       module clk
	 *
	 * output clk = module clk / (PSC + 1) [ (ICCL + d) + (ICCH + d) ]
	 *
	 * Thus,
	 * (ICCL + ICCH) = clk = (input clk / ((psc +1) * output clk)) - 2d;
	 *
	 * where if PSC == 0, d = 7,
	 *       if PSC == 1, d = 6
	 *       if PSC > 1 , d = 5
	 */

	/* get minimum of 7 MHz clock, but max of 12 MHz */
	psc = (input_clock / 7000000) - 1;
	if ((input_clock / (psc + 1)) > 12000000)
		psc++;	/* better to run under spec than over */
	d = (psc >= 2) ? 5 : 7 - psc;

	clk = ((input_clock / (psc + 1)) / (pdata->bus_freq * 1000)) - (d << 1);
	clkh = clk >> 1;
	clkl = clk - clkh;

	FUNC3(dev, DAVINCI_I2C_PSC_REG, psc);
	FUNC3(dev, DAVINCI_I2C_CLKH_REG, clkh);
	FUNC3(dev, DAVINCI_I2C_CLKL_REG, clkl);

	/* Respond at reserved "SMBus Host" slave address" (and zero);
	 * we seem to have no option to not respond...
	 */
	FUNC3(dev, DAVINCI_I2C_OAR_REG, 0x08);

	FUNC4(dev->dev, "input_clock = %d, CLK = %d\n", input_clock, clk);
	FUNC4(dev->dev, "PSC  = %d\n",
		FUNC2(dev, DAVINCI_I2C_PSC_REG));
	FUNC4(dev->dev, "CLKL = %d\n",
		FUNC2(dev, DAVINCI_I2C_CLKL_REG));
	FUNC4(dev->dev, "CLKH = %d\n",
		FUNC2(dev, DAVINCI_I2C_CLKH_REG));
	FUNC4(dev->dev, "bus_freq = %dkHz, bus_delay = %d\n",
		pdata->bus_freq, pdata->bus_delay);

	/* Take the I2C module out of reset: */
	w = FUNC2(dev, DAVINCI_I2C_MDR_REG);
	FUNC0(w, DAVINCI_I2C_MDR_IRS, 1);
	FUNC3(dev, DAVINCI_I2C_MDR_REG, w);

	/* Enable interrupts */
	FUNC3(dev, DAVINCI_I2C_IMR_REG, I2C_DAVINCI_INTR_ALL);

	return 0;
}