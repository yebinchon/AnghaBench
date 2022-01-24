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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct specialix_board*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct specialix_board *bp)
{
	unsigned long flags;

	FUNC0();

	FUNC2(&bp->lock, flags);
	(void) FUNC4(bp, 0); /* Turn ON interrupts. */
	FUNC3(&bp->lock, flags);

	FUNC1();
}