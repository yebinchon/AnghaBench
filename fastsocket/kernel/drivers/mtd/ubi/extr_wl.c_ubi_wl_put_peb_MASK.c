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
struct ubi_device {int peb_count; int move_to_put; scalar_t__ erroneous_peb_count; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  used; int /*<<< orphan*/  erroneous; int /*<<< orphan*/  scrub; struct ubi_wl_entry* move_to; int /*<<< orphan*/  move_mutex; struct ubi_wl_entry* move_from; struct ubi_wl_entry** lookuptbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ubi_device*,struct ubi_wl_entry*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 

int FUNC14(struct ubi_device *ubi, int pnum, int torture)
{
	int err;
	struct ubi_wl_entry *e;

	FUNC0("PEB %d", pnum);
	FUNC10(pnum >= 0);
	FUNC10(pnum < ubi->peb_count);

retry:
	FUNC8(&ubi->wl_lock);
	e = ubi->lookuptbl[pnum];
	if (e == ubi->move_from) {
		/*
		 * User is putting the physical eraseblock which was selected to
		 * be moved. It will be scheduled for erasure in the
		 * wear-leveling worker.
		 */
		FUNC0("PEB %d is being moved, wait", pnum);
		FUNC9(&ubi->wl_lock);

		/* Wait for the WL worker by taking the @ubi->move_mutex */
		FUNC2(&ubi->move_mutex);
		FUNC3(&ubi->move_mutex);
		goto retry;
	} else if (e == ubi->move_to) {
		/*
		 * User is putting the physical eraseblock which was selected
		 * as the target the data is moved to. It may happen if the EBA
		 * sub-system already re-mapped the LEB in 'ubi_eba_copy_leb()'
		 * but the WL sub-system has not put the PEB to the "used" tree
		 * yet, but it is about to do this. So we just set a flag which
		 * will tell the WL worker that the PEB is not needed anymore
		 * and should be scheduled for erasure.
		 */
		FUNC0("PEB %d is the target of data moving", pnum);
		FUNC10(!ubi->move_to_put);
		ubi->move_to_put = 1;
		FUNC9(&ubi->wl_lock);
		return 0;
	} else {
		if (FUNC1(e, &ubi->used)) {
			FUNC4(e, &ubi->used);
			FUNC6(&e->u.rb, &ubi->used);
		} else if (FUNC1(e, &ubi->scrub)) {
			FUNC4(e, &ubi->scrub);
			FUNC6(&e->u.rb, &ubi->scrub);
		} else if (FUNC1(e, &ubi->erroneous)) {
			FUNC4(e, &ubi->erroneous);
			FUNC6(&e->u.rb, &ubi->erroneous);
			ubi->erroneous_peb_count -= 1;
			FUNC10(ubi->erroneous_peb_count >= 0);
			/* Erroneous PEBs should be tortured */
			torture = 1;
		} else {
			err = FUNC5(ubi, e->pnum);
			if (err) {
				FUNC11("PEB %d not found", pnum);
				FUNC12(ubi);
				FUNC9(&ubi->wl_lock);
				return err;
			}
		}
	}
	FUNC9(&ubi->wl_lock);

	err = FUNC7(ubi, e, torture);
	if (err) {
		FUNC8(&ubi->wl_lock);
		FUNC13(e, &ubi->used);
		FUNC9(&ubi->wl_lock);
	}

	return err;
}