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
 int /*<<< orphan*/  CKSEL ; 
 int /*<<< orphan*/  PBADIV ; 
 int /*<<< orphan*/  PBASEL ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct clk*,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

unsigned long FUNC4(struct clk *clk)
{
	unsigned long cksel, shift = 0;

	cksel = FUNC3(CKSEL);
	if (cksel & FUNC1(PBADIV))
		shift = FUNC0(PBASEL, cksel) + 1;

	return FUNC2(clk, shift);
}