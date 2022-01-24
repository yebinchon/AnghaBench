#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLLFRQ ; 
 int /*<<< orphan*/  PLLCR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC1(struct clk *clk)
{
	unsigned long mult;

	if (FUNC0(PLLCR) & 0x1000)
		mult = FUNC0(DLLFRQ);
	else
		mult = 0;

	return clk->parent->rate * mult;
}