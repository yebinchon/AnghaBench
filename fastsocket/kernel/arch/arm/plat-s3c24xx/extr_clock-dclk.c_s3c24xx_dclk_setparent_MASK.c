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
struct clk {scalar_t__ ctrlbit; struct clk* parent; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ S3C2410_DCLKCON_DCLK0EN ; 
 unsigned long S3C2410_DCLKCON_DCLK0_UCLK ; 
 unsigned long S3C2410_DCLKCON_DCLK1_UCLK ; 
 int /*<<< orphan*/  S3C24XX_DCLKCON ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 struct clk clk_p ; 
 struct clk clk_upll ; 

__attribute__((used)) static int FUNC2(struct clk *clk, struct clk *parent)
{
	unsigned long dclkcon;
	unsigned int uclk;

	if (parent == &clk_upll)
		uclk = 1;
	else if (parent == &clk_p)
		uclk = 0;
	else
		return -EINVAL;

	clk->parent = parent;

	dclkcon = FUNC0(S3C24XX_DCLKCON);

	if (clk->ctrlbit == S3C2410_DCLKCON_DCLK0EN) {
		if (uclk)
			dclkcon |= S3C2410_DCLKCON_DCLK0_UCLK;
		else
			dclkcon &= ~S3C2410_DCLKCON_DCLK0_UCLK;
	} else {
		if (uclk)
			dclkcon |= S3C2410_DCLKCON_DCLK1_UCLK;
		else
			dclkcon &= ~S3C2410_DCLKCON_DCLK1_UCLK;
	}

	FUNC1(dclkcon, S3C24XX_DCLKCON);

	return 0;
}