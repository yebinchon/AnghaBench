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
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_CLKSLOW ; 
 unsigned long S3C2410_CLKSLOW_UCLK_OFF ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct clk *clk, int enable)
{
	unsigned long clkslow = FUNC0(S3C2410_CLKSLOW);
	unsigned long orig = clkslow;

	if (enable)
		clkslow &= ~S3C2410_CLKSLOW_UCLK_OFF;
	else
		clkslow |= S3C2410_CLKSLOW_UCLK_OFF;

	FUNC1(clkslow, S3C2410_CLKSLOW);

	/* if we started the UPLL, then allow to settle */

	if (enable && (orig & S3C2410_CLKSLOW_UCLK_OFF))
		FUNC2(200);

	return 0;
}