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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct pxa_i2c {int slave_addr; TYPE_1__ adap; scalar_t__ fast_mode; } ;

/* Variables and functions */
 int I2C_ICR_INIT ; 
 int I2C_ISR_INIT ; 
 int ICR_ALDIE ; 
 int ICR_FM ; 
 int ICR_IUE ; 
 int ICR_SADIE ; 
 int ICR_SSDIE ; 
 int ICR_UR ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct pxa_i2c *i2c)
{
	FUNC6("Resetting I2C Controller Unit\n");

	/* abort any transfer currently under way */
	FUNC4(i2c);

	/* reset according to 9.8 */
	FUNC9(ICR_UR, FUNC0(i2c));
	FUNC9(I2C_ISR_INIT, FUNC2(i2c));
	FUNC9(FUNC7(FUNC0(i2c)) & ~ICR_UR, FUNC0(i2c));

	FUNC9(i2c->slave_addr, FUNC1(i2c));

	/* set control register values */
	FUNC9(I2C_ICR_INIT | (i2c->fast_mode ? ICR_FM : 0), FUNC0(i2c));

#ifdef CONFIG_I2C_PXA_SLAVE
	dev_info(&i2c->adap.dev, "Enabling slave mode\n");
	writel(readl(_ICR(i2c)) | ICR_SADIE | ICR_ALDIE | ICR_SSDIE, _ICR(i2c));
#endif

	FUNC5(i2c, 0);

	/* enable unit */
	FUNC9(FUNC7(FUNC0(i2c)) | ICR_IUE, FUNC0(i2c));
	FUNC8(100);
}