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
struct bnx2x {unsigned long sp_state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static inline bool FUNC5(struct bnx2x *bp, unsigned long mask)
{
	int tout = 5000; /* Wait for 5 secs tops */

	while (tout--) {
		FUNC3();
		FUNC1(bp->dev);
		if (!(bp->sp_state & mask)) {
			FUNC2(bp->dev);
			return true;
		}
		FUNC2(bp->dev);

		FUNC4(1000, 2000);
	}

	FUNC3();

	FUNC1(bp->dev);
	if (bp->sp_state & mask) {
		FUNC0("Filtering completion timed out. sp_state 0x%lx, mask 0x%lx\n",
			  bp->sp_state, mask);
		FUNC2(bp->dev);
		return false;
	}
	FUNC2(bp->dev);

	return true;
}