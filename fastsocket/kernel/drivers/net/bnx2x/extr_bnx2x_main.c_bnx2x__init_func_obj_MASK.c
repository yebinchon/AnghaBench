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
struct bnx2x {int /*<<< orphan*/  func_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  bnx2x_func_sp_drv ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  func_afex_rdata ; 
 int /*<<< orphan*/  func_rdata ; 

void FUNC4(struct bnx2x *bp)
{
	/* Prepare DMAE related driver resources */
	FUNC1(bp);

	FUNC0(bp, &bp->func_obj,
			    FUNC2(bp, func_rdata),
			    FUNC3(bp, func_rdata),
			    FUNC2(bp, func_afex_rdata),
			    FUNC3(bp, func_afex_rdata),
			    &bnx2x_func_sp_drv);
}