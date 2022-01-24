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
struct log_c {int /*<<< orphan*/  flush_lock; int /*<<< orphan*/  mark_list; } ;
struct flush_entry {int /*<<< orphan*/  list; int /*<<< orphan*/  region; int /*<<< orphan*/  type; } ;
struct dm_dirty_log {struct log_c* context; } ;
typedef  int /*<<< orphan*/  region_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DM_ULOG_MARK_REGION ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  flush_entry_pool ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct flush_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct dm_dirty_log *log, region_t region)
{
	unsigned long flags;
	struct log_c *lc = log->context;
	struct flush_entry *fe;

	/* Wait for an allocation, but _never_ fail */
	fe = FUNC2(flush_entry_pool, GFP_NOIO);
	FUNC0(!fe);

	FUNC3(&lc->flush_lock, flags);
	fe->type = DM_ULOG_MARK_REGION;
	fe->region = region;
	FUNC1(&fe->list, &lc->mark_list);
	FUNC4(&lc->flush_lock, flags);

	return;
}