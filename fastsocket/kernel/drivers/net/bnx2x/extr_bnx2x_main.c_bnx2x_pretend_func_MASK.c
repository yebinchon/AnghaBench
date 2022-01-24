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
typedef  int /*<<< orphan*/  u16 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  E1H_FUNC_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 

int FUNC4(struct bnx2x *bp, u16 pretend_func_val)
{
	u32 pretend_reg;

	if (FUNC0(bp) && pretend_func_val >= E1H_FUNC_MAX)
		return -1;

	/* get my own pretend register */
	pretend_reg = FUNC3(bp);
	FUNC2(bp, pretend_reg, pretend_func_val);
	FUNC1(bp, pretend_reg);
	return 0;
}