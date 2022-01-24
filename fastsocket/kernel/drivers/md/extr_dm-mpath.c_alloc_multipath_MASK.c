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
struct multipath {int queue_io; struct dm_target* ti; int /*<<< orphan*/  mpio_pool; int /*<<< orphan*/  work_mutex; int /*<<< orphan*/  pg_init_wait; int /*<<< orphan*/  trigger_event; int /*<<< orphan*/  process_queued_ios; int /*<<< orphan*/  pg_init_delay_msecs; int /*<<< orphan*/  lock; int /*<<< orphan*/  queued_ios; int /*<<< orphan*/  priority_groups; } ;
struct dm_target {struct multipath* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_PG_INIT_DELAY_DEFAULT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIN_IOS ; 
 int /*<<< orphan*/  _mpio_cache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct multipath*) ; 
 struct multipath* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  process_queued_ios ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trigger_event ; 

__attribute__((used)) static struct multipath *FUNC8(struct dm_target *ti)
{
	struct multipath *m;

	m = FUNC4(sizeof(*m), GFP_KERNEL);
	if (m) {
		FUNC0(&m->priority_groups);
		FUNC0(&m->queued_ios);
		FUNC7(&m->lock);
		m->queue_io = 1;
		m->pg_init_delay_msecs = DM_PG_INIT_DELAY_DEFAULT;
		FUNC1(&m->process_queued_ios, process_queued_ios);
		FUNC1(&m->trigger_event, trigger_event);
		FUNC2(&m->pg_init_wait);
		FUNC6(&m->work_mutex);
		m->mpio_pool = FUNC5(MIN_IOS, _mpio_cache);
		if (!m->mpio_pool) {
			FUNC3(m);
			return NULL;
		}
		m->ti = ti;
		ti->private = m;
	}

	return m;
}