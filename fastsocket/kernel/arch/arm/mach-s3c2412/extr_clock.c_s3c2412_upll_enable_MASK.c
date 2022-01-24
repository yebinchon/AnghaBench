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
 int /*<<< orphan*/  S3C2410_UPLLCON ; 
 unsigned long S3C2412_PLLCON_OFF ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct clk *clk, int enable)
{
	unsigned long upllcon = FUNC0(S3C2410_UPLLCON);
	unsigned long orig = upllcon;

	if (!enable)
		upllcon |= S3C2412_PLLCON_OFF;
	else
		upllcon &= ~S3C2412_PLLCON_OFF;

	FUNC1(upllcon, S3C2410_UPLLCON);

	/* allow ~150uS for the PLL to settle and lock */

	if (enable && (orig & S3C2412_PLLCON_OFF))
		FUNC2(150);

	return 0;
}