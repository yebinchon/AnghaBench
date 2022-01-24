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
struct gemtek {int /*<<< orphan*/  lock; int /*<<< orphan*/  io; int /*<<< orphan*/  lastfreq; scalar_t__ muted; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHORT_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct gemtek*,int /*<<< orphan*/ ) ; 
 scalar_t__ hardmute ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct gemtek *gt)
{
	int i;

	gt->muted = 0;
	if (hardmute) {
		/* Turn PLL back on. */
		FUNC0(gt, gt->lastfreq);
		return;
	}
	FUNC2(&gt->lock);

	i = FUNC1(gt->io);
	FUNC4(i >> 5, gt->io);
	FUNC5(SHORT_DELAY);

	FUNC3(&gt->lock);
}