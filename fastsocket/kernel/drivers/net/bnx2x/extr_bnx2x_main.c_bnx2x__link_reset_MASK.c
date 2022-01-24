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
struct bnx2x {int /*<<< orphan*/  link_vars; int /*<<< orphan*/  link_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp)
{
	if (!FUNC1(bp)) {
		FUNC2(bp);
		FUNC3(&bp->link_params, &bp->link_vars);
		FUNC4(bp);
	} else
		FUNC0("Bootcode is missing - can not reset link\n");
}