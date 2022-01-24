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
struct bnad {int /*<<< orphan*/  bna_lock; int /*<<< orphan*/  stats_timer; int /*<<< orphan*/  run_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_RF_STATS_TIMER_RUNNING ; 
 int /*<<< orphan*/  BNAD_STATS_TIMER_FREQ ; 
 int /*<<< orphan*/  bnad_stats_timeout ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct bnad *bnad)
{
	unsigned long flags;

	FUNC3(&bnad->bna_lock, flags);
	if (!FUNC5(BNAD_RF_STATS_TIMER_RUNNING, &bnad->run_flags)) {
		FUNC2(&bnad->stats_timer, bnad_stats_timeout,
			    (unsigned long)bnad);
		FUNC0(&bnad->stats_timer,
			  jiffies + FUNC1(BNAD_STATS_TIMER_FREQ));
	}
	FUNC4(&bnad->bna_lock, flags);
}