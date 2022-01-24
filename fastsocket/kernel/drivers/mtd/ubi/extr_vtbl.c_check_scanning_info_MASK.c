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
struct ubi_volume {scalar_t__ reserved_pebs; } ;
struct ubi_scan_volume {int /*<<< orphan*/  vol_id; } ;
struct ubi_scan_info {scalar_t__ vols_found; scalar_t__ highest_vol_id; } ;
struct ubi_device {scalar_t__ vtbl_slots; struct ubi_volume** volumes; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UBI_INTERNAL_VOL_START ; 
 scalar_t__ UBI_INT_VOL_COUNT ; 
 int FUNC0 (struct ubi_volume*,struct ubi_scan_volume*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 struct ubi_scan_volume* FUNC5 (struct ubi_scan_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ubi_scan_info*,struct ubi_scan_volume*) ; 

__attribute__((used)) static int FUNC7(const struct ubi_device *ubi,
			       struct ubi_scan_info *si)
{
	int err, i;
	struct ubi_scan_volume *sv;
	struct ubi_volume *vol;

	if (si->vols_found > UBI_INT_VOL_COUNT + ubi->vtbl_slots) {
		FUNC3("scanning found %d volumes, maximum is %d + %d",
			si->vols_found, UBI_INT_VOL_COUNT, ubi->vtbl_slots);
		return -EINVAL;
	}

	if (si->highest_vol_id >= ubi->vtbl_slots + UBI_INT_VOL_COUNT &&
	    si->highest_vol_id < UBI_INTERNAL_VOL_START) {
		FUNC3("too large volume ID %d found by scanning",
			si->highest_vol_id);
		return -EINVAL;
	}

	for (i = 0; i < ubi->vtbl_slots + UBI_INT_VOL_COUNT; i++) {
		FUNC1();

		sv = FUNC5(si, i);
		vol = ubi->volumes[i];
		if (!vol) {
			if (sv)
				FUNC6(si, sv);
			continue;
		}

		if (vol->reserved_pebs == 0) {
			FUNC2(i < ubi->vtbl_slots);

			if (!sv)
				continue;

			/*
			 * During scanning we found a volume which does not
			 * exist according to the information in the volume
			 * table. This must have happened due to an unclean
			 * reboot while the volume was being removed. Discard
			 * these eraseblocks.
			 */
			FUNC4("finish volume %d removal", sv->vol_id);
			FUNC6(si, sv);
		} else if (sv) {
			err = FUNC0(vol, sv);
			if (err)
				return err;
		}
	}

	return 0;
}