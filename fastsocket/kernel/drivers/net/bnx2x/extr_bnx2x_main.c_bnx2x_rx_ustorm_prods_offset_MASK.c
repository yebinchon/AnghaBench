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
struct bnx2x_fastpath {int /*<<< orphan*/  cl_id; int /*<<< orphan*/  cl_qzone_id; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAR_USTRORM_INTMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,struct bnx2x_fastpath*) ; 

u32 FUNC6(struct bnx2x_fastpath *fp)
{
	struct bnx2x *bp = fp->bp;
	u32 offset = BAR_USTRORM_INTMEM;

	if (FUNC2(bp))
		return FUNC5(bp, fp);
	else if (!FUNC1(bp))
		offset += FUNC4(fp->cl_qzone_id);
	else
		offset += FUNC3(FUNC0(bp), fp->cl_id);

	return offset;
}