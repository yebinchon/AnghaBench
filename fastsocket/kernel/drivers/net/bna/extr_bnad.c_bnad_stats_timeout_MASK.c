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
struct bnad {int /*<<< orphan*/  bna_lock; int /*<<< orphan*/  bna; int /*<<< orphan*/  run_flags; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_RF_STATS_TIMER_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(unsigned long data)
{
	struct bnad *bnad = (struct bnad *)data;
	unsigned long flags;

	if (!FUNC1(bnad->netdev) ||
		!FUNC4(BNAD_RF_STATS_TIMER_RUNNING, &bnad->run_flags))
		return;

	FUNC2(&bnad->bna_lock, flags);
	FUNC0(&bnad->bna);
	FUNC3(&bnad->bna_lock, flags);
}