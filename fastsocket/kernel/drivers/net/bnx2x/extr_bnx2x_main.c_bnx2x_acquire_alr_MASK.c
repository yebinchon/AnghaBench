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
typedef  int u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBUSY ; 
 int MCPR_ACCESS_LOCK_LOCK ; 
 int /*<<< orphan*/  MCP_REG_MCPR_ACCESS_LOCK ; 
 int FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct bnx2x *bp)
{
	u32 j, val;
	int rc = 0;

	FUNC3();
	for (j = 0; j < 1000; j++) {
		FUNC2(bp, MCP_REG_MCPR_ACCESS_LOCK, MCPR_ACCESS_LOCK_LOCK);
		val = FUNC1(bp, MCP_REG_MCPR_ACCESS_LOCK);
		if (val & MCPR_ACCESS_LOCK_LOCK)
			break;

		FUNC4(5000, 10000);
	}
	if (!(val & MCPR_ACCESS_LOCK_LOCK)) {
		FUNC0("Cannot acquire MCP access lock register\n");
		rc = -EBUSY;
	}

	return rc;
}