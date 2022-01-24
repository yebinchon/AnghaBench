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
struct mxcmci_host {int /*<<< orphan*/  mmc; scalar_t__ base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ MMC_REG_CLK_RATE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct mxcmci_host *host, unsigned int clk_ios)
{
	unsigned int divider;
	int prescaler = 0;
	unsigned int clk_in = FUNC0(host->clk);

	while (prescaler <= 0x800) {
		for (divider = 1; divider <= 0xF; divider++) {
			int x;

			x = (clk_in / (divider + 1));

			if (prescaler)
				x /= (prescaler * 2);

			if (x <= clk_ios)
				break;
		}
		if (divider < 0x10)
			break;

		if (prescaler == 0)
			prescaler = 1;
		else
			prescaler <<= 1;
	}

	FUNC3((prescaler << 4) | divider, host->base + MMC_REG_CLK_RATE);

	FUNC1(FUNC2(host->mmc), "scaler: %d divider: %d in: %d out: %d\n",
			prescaler, divider, clk_in, clk_ios);
}