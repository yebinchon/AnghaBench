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
typedef  int u32 ;
struct clk {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP93XX_SYSCON_PWRCNT ; 
 int EP93XX_SYSCON_PWRCNT_UARTBAUD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk *clk)
{
	unsigned long rate = FUNC1(clk->parent);
	u32 value;

	value = FUNC0(EP93XX_SYSCON_PWRCNT);
	if (value & EP93XX_SYSCON_PWRCNT_UARTBAUD)
		return rate;
	else
		return rate / 2;
}