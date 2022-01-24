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
typedef  int /*<<< orphan*/  u32 ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C64XX_OTHERS ; 
 int /*<<< orphan*/  S3C64XX_OTHERS_USBMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static int FUNC4(struct clk *clk, int enable)
{
	unsigned long flags;
	u32 val;

	/* can't rely on clock lock, this register has other usages */
	FUNC3(flags);

	val = FUNC0(S3C64XX_OTHERS);
	if (enable)
		val |= S3C64XX_OTHERS_USBMASK;
	else
		val &= ~S3C64XX_OTHERS_USBMASK;

	FUNC1(val, S3C64XX_OTHERS);
	FUNC2(flags);

	return 0;
}