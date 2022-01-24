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
typedef  int u32 ;
struct clk {TYPE_1__* parent; int /*<<< orphan*/  index; } ;
struct TYPE_2__ {unsigned long (* get_rate ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DIV ; 
 int /*<<< orphan*/  DIVEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static unsigned long FUNC5(struct clk *clk)
{
	u32 control;
	unsigned long div = 1;

	control = FUNC3(FUNC0(clk->index));
	if (control & FUNC2(DIVEN))
		div = 2 * (FUNC1(DIV, control) + 1);

	return clk->parent->get_rate(clk->parent) / div;
}