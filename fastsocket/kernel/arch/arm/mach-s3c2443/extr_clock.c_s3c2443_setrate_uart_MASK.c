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
struct clk {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2443_CLKDIV1 ; 
 unsigned long S3C2443_CLKDIV1_UARTDIV_MASK ; 
 unsigned long S3C2443_CLKDIV1_UARTDIV_SHIFT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct clk*,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct clk *clk, unsigned long rate)
{
	unsigned long parent_rate = FUNC2(clk->parent);
	unsigned long clkdivn = FUNC0(S3C2443_CLKDIV1);

	rate = FUNC3(clk, rate);
	rate = parent_rate / rate;

	clkdivn &= ~S3C2443_CLKDIV1_UARTDIV_MASK;
	clkdivn |= (rate - 1) << S3C2443_CLKDIV1_UARTDIV_SHIFT;

	FUNC1(clkdivn, S3C2443_CLKDIV1);
	return 0;
}