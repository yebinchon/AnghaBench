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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int EXT ; 
 unsigned int OTHER ; 
 unsigned int PLL0 ; 
 unsigned int PLL1 ; 
 int /*<<< orphan*/  clksel_sem ; 
 int /*<<< orphan*/  FUNC1 (char const*,unsigned int) ; 
 char* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (unsigned char*,char*) ; 

void FUNC6(struct device *dev, unsigned char *src)
{
	unsigned int clkval;
	const char *dev_id;

	FUNC0(!src);
	clkval = 0;

	FUNC3(&clksel_sem);

	if (dev)
		dev_id = FUNC2(dev);
	else
		dev_id = "cpufreq";

	if (FUNC5(src, "pll0") == 0)
		clkval = PLL0;
	else if (FUNC5(src, "pll1") == 0)
		clkval = PLL1;
	else if (FUNC5(src, "ext") == 0)
		clkval = EXT;
	else if (FUNC5(src, "oth") == 0)
		clkval = OTHER;

	FUNC1(dev_id, clkval);

	FUNC4(&clksel_sem);
}