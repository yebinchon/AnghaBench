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
 int /*<<< orphan*/  PBBDIV ; 
 int /*<<< orphan*/  PBBSEL ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct clk*,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk *clk)
{
	unsigned long cksel, shift = 0;

	cksel = FUNC3(CKSEL);
	if (cksel & FUNC1(PBBDIV))
		shift = FUNC0(PBBSEL, cksel) + 1;

	return FUNC2(clk, shift);
}