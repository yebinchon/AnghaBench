#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  head; } ;
struct mirror_set {unsigned int nr_mirrors; int /*<<< orphan*/  lock; TYPE_1__ failures; scalar_t__ mirror; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {struct mirror_set* ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_RAID1_WRITE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,unsigned int) ; 
 TYPE_2__* FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (unsigned int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (struct mirror_set*) ; 

__attribute__((used)) static void FUNC10(unsigned long error, void *context)
{
	unsigned i, ret = 0;
	struct bio *bio = (struct bio *) context;
	struct mirror_set *ms;
	int should_wake = 0;
	unsigned long flags;

	ms = FUNC1(bio)->ms;
	FUNC3(bio, NULL);

	/*
	 * NOTE: We don't decrement the pending count here,
	 * instead it is done by the targets endio function.
	 * This way we handle both writes to SYNC and NOSYNC
	 * regions with the same code.
	 */
	if (FUNC5(!error)) {
		FUNC0(bio, ret);
		return;
	}

	for (i = 0; i < ms->nr_mirrors; i++)
		if (FUNC8(i, &error))
			FUNC4(ms->mirror + i, DM_RAID1_WRITE_ERROR);

	/*
	 * Need to raise event.  Since raising
	 * events can block, we need to do it in
	 * the main thread.
	 */
	FUNC6(&ms->lock, flags);
	if (!ms->failures.head)
		should_wake = 1;
	FUNC2(&ms->failures, bio);
	FUNC7(&ms->lock, flags);
	if (should_wake)
		FUNC9(ms);
}