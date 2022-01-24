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
struct clk {unsigned long rate; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long S3C2410_DCLKCON_DCLK0_CMP_MASK ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long S3C2410_DCLKCON_DCLK0_DIV_MASK ; 
 unsigned long FUNC2 (unsigned long) ; 
 unsigned long S3C2410_DCLKCON_DCLK1_CMP_MASK ; 
 unsigned long FUNC3 (unsigned long) ; 
 unsigned long S3C2410_DCLKCON_DCLK1_DIV_MASK ; 
 int /*<<< orphan*/  S3C24XX_DCLKCON ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (struct clk*,unsigned long) ; 
 struct clk s3c24xx_dclk0 ; 
 struct clk s3c24xx_dclk1 ; 

__attribute__((used)) static int FUNC8(struct clk *clk, unsigned long rate)
{
	unsigned long mask, data, div = FUNC7(clk, rate);

	if (div == 0)
		return -EINVAL;

	if (clk == &s3c24xx_dclk0) {
		mask = S3C2410_DCLKCON_DCLK0_DIV_MASK |
			S3C2410_DCLKCON_DCLK0_CMP_MASK;
		data = FUNC1(div) |
			FUNC0((div + 1) / 2);
	} else if (clk == &s3c24xx_dclk1) {
		mask = S3C2410_DCLKCON_DCLK1_DIV_MASK |
			S3C2410_DCLKCON_DCLK1_CMP_MASK;
		data = FUNC3(div) |
			FUNC2((div + 1) / 2);
	} else
		return -EINVAL;

	clk->rate = FUNC6(clk->parent) / div;
	FUNC5(((FUNC4(S3C24XX_DCLKCON) & ~mask) | data),
		S3C24XX_DCLKCON);
	return clk->rate;
}