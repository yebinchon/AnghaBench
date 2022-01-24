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
typedef  int /*<<< orphan*/  u8 ;
struct bnx2x {int /*<<< orphan*/  link_vars; int /*<<< orphan*/  link_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

u8 FUNC5(struct bnx2x *bp, u8 is_serdes)
{
	u8 rc = 0;

	if (!FUNC1(bp)) {
		FUNC2(bp);
		rc = FUNC4(&bp->link_params, &bp->link_vars,
				     is_serdes);
		FUNC3(bp);
	} else
		FUNC0("Bootcode is missing - can not test link\n");

	return rc;
}