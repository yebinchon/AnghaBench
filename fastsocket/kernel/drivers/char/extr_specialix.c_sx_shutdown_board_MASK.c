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
struct specialix_board {int flags; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int SX_BOARD_ACTIVE ; 
 int /*<<< orphan*/  SX_DEBUG_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct specialix_board*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct specialix_board*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct specialix_board*) ; 

__attribute__((used)) static void FUNC6(struct specialix_board *bp)
{
	FUNC3();

	if (!(bp->flags & SX_BOARD_ACTIVE)) {
		FUNC4();
		return;
	}

	bp->flags &= ~SX_BOARD_ACTIVE;

	FUNC1(SX_DEBUG_IRQ, "Freeing IRQ%d for board %d.\n",
		 bp->irq, FUNC0(bp));
	FUNC2(bp->irq, bp);
	FUNC5(bp);
	FUNC4();
}