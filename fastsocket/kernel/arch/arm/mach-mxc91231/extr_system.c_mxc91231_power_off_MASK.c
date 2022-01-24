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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  WDOG_WCR ; 
 int /*<<< orphan*/  WDOG_WCR_ASSERT ; 
 int /*<<< orphan*/  WDOG_WCR_OUT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	u16 wcr;

	wcr = FUNC0(WDOG_WCR);
	wcr |= WDOG_WCR_OUT_ENABLE;
	wcr &= ~WDOG_WCR_ASSERT;
	FUNC1(wcr, WDOG_WCR);
}