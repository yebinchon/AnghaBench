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
struct ubi_work {int /*<<< orphan*/  torture; struct ubi_wl_entry* e; } ;
struct ubi_wl_entry {int pnum; int /*<<< orphan*/  ec; } ;
struct ubi_device {int beb_rsvd_level; int beb_rsvd_pebs; int avail_pebs; int rsvd_pebs; int bad_peb_count; int good_peb_count; int /*<<< orphan*/  volumes_lock; int /*<<< orphan*/  bad_allowed; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  free; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EINTR ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_work*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ubi_wl_entry*) ; 
 int FUNC4 (struct ubi_device*,struct ubi_wl_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ubi_device*,struct ubi_wl_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (struct ubi_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  ubi_wl_entry_slab ; 
 int /*<<< orphan*/  FUNC15 (struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct ubi_device *ubi, struct ubi_work *wl_wrk,
			int cancel)
{
	struct ubi_wl_entry *e = wl_wrk->e;
	int pnum = e->pnum, err, need;

	if (cancel) {
		FUNC0("cancel erasure of PEB %d EC %d", pnum, e->ec);
		FUNC2(wl_wrk);
		FUNC3(ubi_wl_entry_slab, e);
		return 0;
	}

	FUNC0("erase PEB %d EC %d", pnum, e->ec);

	err = FUNC8(ubi, e, wl_wrk->torture);
	if (!err) {
		/* Fine, we've erased it successfully */
		FUNC2(wl_wrk);

		FUNC6(&ubi->wl_lock);
		FUNC15(e, &ubi->free);
		FUNC7(&ubi->wl_lock);

		/*
		 * One more erase operation has happened, take care about
		 * protected physical eraseblocks.
		 */
		FUNC5(ubi);

		/* And take care about wear-leveling */
		err = FUNC1(ubi);
		return err;
	}

	FUNC10("failed to erase PEB %d, error %d", pnum, err);
	FUNC2(wl_wrk);
	FUNC3(ubi_wl_entry_slab, e);

	if (err == -EINTR || err == -ENOMEM || err == -EAGAIN ||
	    err == -EBUSY) {
		int err1;

		/* Re-schedule the LEB for erasure */
		err1 = FUNC4(ubi, e, 0);
		if (err1) {
			err = err1;
			goto out_ro;
		}
		return err;
	} else if (err != -EIO) {
		/*
		 * If this is not %-EIO, we have no idea what to do. Scheduling
		 * this physical eraseblock for erasure again would cause
		 * errors again and again. Well, lets switch to R/O mode.
		 */
		goto out_ro;
	}

	/* It is %-EIO, the PEB went bad */

	if (!ubi->bad_allowed) {
		FUNC10("bad physical eraseblock %d detected", pnum);
		goto out_ro;
	}

	FUNC6(&ubi->volumes_lock);
	need = ubi->beb_rsvd_level - ubi->beb_rsvd_pebs + 1;
	if (need > 0) {
		need = ubi->avail_pebs >= need ? need : ubi->avail_pebs;
		ubi->avail_pebs -= need;
		ubi->rsvd_pebs += need;
		ubi->beb_rsvd_pebs += need;
		if (need > 0)
			FUNC12("reserve more %d PEBs", need);
	}

	if (ubi->beb_rsvd_pebs == 0) {
		FUNC7(&ubi->volumes_lock);
		FUNC10("no reserved physical eraseblocks");
		goto out_ro;
	}
	FUNC7(&ubi->volumes_lock);

	FUNC12("mark PEB %d as bad", pnum);
	err = FUNC11(ubi, pnum);
	if (err)
		goto out_ro;

	FUNC6(&ubi->volumes_lock);
	ubi->beb_rsvd_pebs -= 1;
	ubi->bad_peb_count += 1;
	ubi->good_peb_count -= 1;
	FUNC9(ubi);
	if (ubi->beb_rsvd_pebs)
		FUNC12("%d PEBs left in the reserve", ubi->beb_rsvd_pebs);
	else
		FUNC14("last PEB from the reserved pool was used");
	FUNC7(&ubi->volumes_lock);

	return err;

out_ro:
	FUNC13(ubi);
	return err;
}