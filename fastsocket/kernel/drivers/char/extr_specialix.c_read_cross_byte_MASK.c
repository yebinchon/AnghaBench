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
struct specialix_board {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CD186x_CAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct specialix_board*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct specialix_board*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct specialix_board *bp, int reg, int bit)
{
	int i;
	int t;
	unsigned long flags;

	FUNC0(&bp->lock, flags);
	for (i = 0, t = 0; i < 8; i++) {
		FUNC3(bp, CD186x_CAR, i);
		if (FUNC2(bp, reg) & bit)
			t |= 1 << i;
	}
	FUNC1(&bp->lock, flags);

	return t;
}