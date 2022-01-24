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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 

int FUNC3(struct bnx2x *bp)
{
	if (!FUNC1(bp))
		/* FCoE */
		if (FUNC2(bp, FUNC0(bp)))
			/* we will fail load process instead of mark
			 * NO_FCOE_FLAG
			 */
			return -ENOMEM;

	return 0;
}