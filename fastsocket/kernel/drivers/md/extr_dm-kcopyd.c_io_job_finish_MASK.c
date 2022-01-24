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
struct dm_kcopyd_throttle {unsigned int last_jiffies; scalar_t__ io_period; scalar_t__ total_period; int /*<<< orphan*/  num_io_jobs; int /*<<< orphan*/  throttle; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int jiffies ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  throttle_spinlock ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct dm_kcopyd_throttle *t)
{
	unsigned long flags;

	if (FUNC4(!t))
		return;

	FUNC2(&throttle_spinlock, flags);

	t->num_io_jobs--;

	if (FUNC1(FUNC0(t->throttle) >= 100))
		goto skip_limit;

	if (!t->num_io_jobs) {
		unsigned now, difference;

		now = jiffies;
		difference = now - t->last_jiffies;
		t->last_jiffies = now;

		t->io_period += difference;
		t->total_period += difference;

		/*
		 * Maintain sane values if we got a temporary overflow.
		 */
		if (FUNC4(t->io_period > t->total_period))
			t->io_period = t->total_period;
	}

skip_limit:
	FUNC3(&throttle_spinlock, flags);
}