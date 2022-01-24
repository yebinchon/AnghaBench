#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mirror_set {int leg_failure; int /*<<< orphan*/  trigger_event; int /*<<< orphan*/  in_sync; } ;
struct mirror {TYPE_1__* dev; int /*<<< orphan*/  error_type; int /*<<< orphan*/  error_count; struct mirror_set* ms; } ;
typedef  enum dm_raid1_error { ____Placeholder_dm_raid1_error } dm_raid1_error ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mirror_set*) ; 
 struct mirror* FUNC4 (struct mirror_set*) ; 
 struct mirror* FUNC5 (struct mirror_set*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mirror*) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct mirror *m, enum dm_raid1_error error_type)
{
	struct mirror_set *ms = m->ms;
	struct mirror *new;

	ms->leg_failure = 1;

	/*
	 * error_count is used for nothing more than a
	 * simple way to tell if a device has encountered
	 * errors.
	 */
	FUNC2(&m->error_count);

	if (FUNC8(error_type, &m->error_type))
		return;

	if (!FUNC3(ms))
		return;

	if (m != FUNC4(ms))
		goto out;

	if (!ms->in_sync) {
		/*
		 * Better to issue requests to same failing device
		 * than to risk returning corrupt data.
		 */
		FUNC0("Primary mirror (%s) failed while out-of-sync: "
		      "Reads may fail.", m->dev->name);
		goto out;
	}

	new = FUNC5(ms);
	if (new)
		FUNC7(new);
	else
		FUNC1("All sides of mirror have failed.");

out:
	FUNC6(&ms->trigger_event);
}