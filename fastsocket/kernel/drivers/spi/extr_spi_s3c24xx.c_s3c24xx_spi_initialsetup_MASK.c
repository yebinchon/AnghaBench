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
struct s3c24xx_spi {scalar_t__ set_cs; TYPE_1__* pdata; scalar_t__ regs; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* gpio_setup ) (TYPE_1__*,int) ;int /*<<< orphan*/  pin_cs; } ;

/* Variables and functions */
 scalar_t__ S3C2410_SPCON ; 
 scalar_t__ S3C2410_SPPIN ; 
 scalar_t__ S3C2410_SPPRE ; 
 int SPCON_DEFAULT ; 
 int SPPIN_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ s3c24xx_spi_gpiocs ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct s3c24xx_spi *hw)
{
	/* for the moment, permanently enable the clock */

	FUNC0(hw->clk);

	/* program defaults into the registers */

	FUNC3(0xff, hw->regs + S3C2410_SPPRE);
	FUNC3(SPPIN_DEFAULT, hw->regs + S3C2410_SPPIN);
	FUNC3(SPCON_DEFAULT, hw->regs + S3C2410_SPCON);

	if (hw->pdata) {
		if (hw->set_cs == s3c24xx_spi_gpiocs)
			FUNC1(hw->pdata->pin_cs, 1);

		if (hw->pdata->gpio_setup)
			hw->pdata->gpio_setup(hw->pdata, 1);
	}
}