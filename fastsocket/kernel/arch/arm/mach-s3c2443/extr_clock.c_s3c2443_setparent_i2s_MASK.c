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
struct clk {struct clk* parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  S3C2443_CLKSRC ; 
 unsigned long S3C2443_CLKSRC_I2S_EPLLREF ; 
 unsigned long S3C2443_CLKSRC_I2S_EXT ; 
 unsigned long S3C2443_CLKSRC_I2S_MASK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 struct clk clk_epllref ; 
 struct clk clk_i2s_eplldiv ; 
 struct clk clk_i2s_ext ; 

__attribute__((used)) static int FUNC2(struct clk *clk, struct clk *parent)
{
	unsigned long clksrc = FUNC0(S3C2443_CLKSRC);

	clksrc &= ~S3C2443_CLKSRC_I2S_MASK;

	if (parent == &clk_epllref)
		clksrc |= S3C2443_CLKSRC_I2S_EPLLREF;
	else if (parent == &clk_i2s_ext)
		clksrc |= S3C2443_CLKSRC_I2S_EXT;
	else if (parent != &clk_i2s_eplldiv)
		return -EINVAL;

	clk->parent = parent;
	FUNC1(clksrc, S3C2443_CLKSRC);

	return 0;
}