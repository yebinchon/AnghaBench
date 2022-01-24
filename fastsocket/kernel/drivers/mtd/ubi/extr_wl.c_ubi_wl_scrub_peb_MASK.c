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
struct TYPE_2__ {int /*<<< orphan*/  rb; } ;
struct ubi_wl_entry {int /*<<< orphan*/  pnum; TYPE_1__ u; } ;
struct ubi_device {int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  scrub; int /*<<< orphan*/  used; struct ubi_wl_entry* move_to; struct ubi_wl_entry* move_from; struct ubi_wl_entry** lookuptbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct ubi_device*) ; 
 scalar_t__ FUNC3 (struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(struct ubi_device *ubi, int pnum)
{
	struct ubi_wl_entry *e;

	FUNC0("schedule PEB %d for scrubbing", pnum);

retry:
	FUNC7(&ubi->wl_lock);
	e = ubi->lookuptbl[pnum];
	if (e == ubi->move_from || FUNC3(e, &ubi->scrub)) {
		FUNC8(&ubi->wl_lock);
		return 0;
	}

	if (e == ubi->move_to) {
		/*
		 * This physical eraseblock was used to move data to. The data
		 * was moved but the PEB was not yet inserted to the proper
		 * tree. We should just wait a little and let the WL worker
		 * proceed.
		 */
		FUNC8(&ubi->wl_lock);
		FUNC1("the PEB %d is not in proper tree, retry", pnum);
		FUNC12();
		goto retry;
	}

	if (FUNC3(e, &ubi->used)) {
		FUNC4(e, &ubi->used);
		FUNC6(&e->u.rb, &ubi->used);
	} else {
		int err;

		err = FUNC5(ubi, e->pnum);
		if (err) {
			FUNC9("PEB %d not found", pnum);
			FUNC10(ubi);
			FUNC8(&ubi->wl_lock);
			return err;
		}
	}

	FUNC11(e, &ubi->scrub);
	FUNC8(&ubi->wl_lock);

	/*
	 * Technically scrubbing is the same as wear-leveling, so it is done
	 * by the WL worker.
	 */
	return FUNC2(ubi);
}