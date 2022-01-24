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
struct ubi_vtbl_record {int /*<<< orphan*/  reserved_pebs; } ;
struct ubi_volume_desc {struct ubi_volume* vol; } ;
struct ubi_volume {int vol_id; int reserved_pebs; scalar_t__ vol_type; int used_ebs; int ref_count; int* eba_tbl; long long last_eb_bytes; long long usable_leb_size; long long used_bytes; struct ubi_device* ubi; } ;
struct ubi_device {int avail_pebs; int rsvd_pebs; int beb_rsvd_level; int beb_rsvd_pebs; int /*<<< orphan*/  volumes_lock; int /*<<< orphan*/ * vtbl; int /*<<< orphan*/  ubi_num; scalar_t__ ro_mode; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int EROFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ UBI_DYNAMIC_VOLUME ; 
 int UBI_LEB_UNMAPPED ; 
 scalar_t__ UBI_STATIC_VOLUME ; 
 int /*<<< orphan*/  UBI_VOLUME_RESIZED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubi_vtbl_record*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct ubi_device*,int,struct ubi_vtbl_record*) ; 
 int FUNC10 (struct ubi_device*,struct ubi_volume*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ubi_device*,struct ubi_volume*,int /*<<< orphan*/ ) ; 

int FUNC13(struct ubi_volume_desc *desc, int reserved_pebs)
{
	int i, err, pebs, *new_mapping;
	struct ubi_volume *vol = desc->vol;
	struct ubi_device *ubi = vol->ubi;
	struct ubi_vtbl_record vtbl_rec;
	int vol_id = vol->vol_id;

	if (ubi->ro_mode)
		return -EROFS;

	FUNC2("re-size device %d, volume %d to from %d to %d PEBs",
		ubi->ubi_num, vol_id, vol->reserved_pebs, reserved_pebs);

	if (vol->vol_type == UBI_STATIC_VOLUME &&
	    reserved_pebs < vol->used_ebs) {
		FUNC1("too small size %d, %d LEBs contain data",
			reserved_pebs, vol->used_ebs);
		return -EINVAL;
	}

	/* If the size is the same, we have nothing to do */
	if (reserved_pebs == vol->reserved_pebs)
		return 0;

	new_mapping = FUNC4(reserved_pebs * sizeof(int), GFP_KERNEL);
	if (!new_mapping)
		return -ENOMEM;

	for (i = 0; i < reserved_pebs; i++)
		new_mapping[i] = UBI_LEB_UNMAPPED;

	FUNC7(&ubi->volumes_lock);
	if (vol->ref_count > 1) {
		FUNC8(&ubi->volumes_lock);
		err = -EBUSY;
		goto out_free;
	}
	FUNC8(&ubi->volumes_lock);

	/* Reserve physical eraseblocks */
	pebs = reserved_pebs - vol->reserved_pebs;
	if (pebs > 0) {
		FUNC7(&ubi->volumes_lock);
		if (pebs > ubi->avail_pebs) {
			FUNC1("not enough PEBs: requested %d, available %d",
				pebs, ubi->avail_pebs);
			FUNC8(&ubi->volumes_lock);
			err = -ENOSPC;
			goto out_free;
		}
		ubi->avail_pebs -= pebs;
		ubi->rsvd_pebs += pebs;
		for (i = 0; i < vol->reserved_pebs; i++)
			new_mapping[i] = vol->eba_tbl[i];
		FUNC3(vol->eba_tbl);
		vol->eba_tbl = new_mapping;
		FUNC8(&ubi->volumes_lock);
	}

	/* Change volume table record */
	FUNC5(&vtbl_rec, &ubi->vtbl[vol_id], sizeof(struct ubi_vtbl_record));
	vtbl_rec.reserved_pebs = FUNC0(reserved_pebs);
	err = FUNC9(ubi, vol_id, &vtbl_rec);
	if (err)
		goto out_acc;

	if (pebs < 0) {
		for (i = 0; i < -pebs; i++) {
			err = FUNC10(ubi, vol, reserved_pebs + i);
			if (err)
				goto out_acc;
		}
		FUNC7(&ubi->volumes_lock);
		ubi->rsvd_pebs += pebs;
		ubi->avail_pebs -= pebs;
		pebs = ubi->beb_rsvd_level - ubi->beb_rsvd_pebs;
		if (pebs > 0) {
			pebs = ubi->avail_pebs >= pebs ? pebs : ubi->avail_pebs;
			ubi->avail_pebs -= pebs;
			ubi->rsvd_pebs += pebs;
			ubi->beb_rsvd_pebs += pebs;
			if (pebs > 0)
				FUNC11("reserve more %d PEBs", pebs);
		}
		for (i = 0; i < reserved_pebs; i++)
			new_mapping[i] = vol->eba_tbl[i];
		FUNC3(vol->eba_tbl);
		vol->eba_tbl = new_mapping;
		FUNC8(&ubi->volumes_lock);
	}

	vol->reserved_pebs = reserved_pebs;
	if (vol->vol_type == UBI_DYNAMIC_VOLUME) {
		vol->used_ebs = reserved_pebs;
		vol->last_eb_bytes = vol->usable_leb_size;
		vol->used_bytes =
			(long long)vol->used_ebs * vol->usable_leb_size;
	}

	FUNC12(ubi, vol, UBI_VOLUME_RESIZED);
	if (FUNC6(ubi))
		FUNC1("check failed while re-sizing volume %d", vol_id);
	return err;

out_acc:
	if (pebs > 0) {
		FUNC7(&ubi->volumes_lock);
		ubi->rsvd_pebs -= pebs;
		ubi->avail_pebs += pebs;
		FUNC8(&ubi->volumes_lock);
	}
out_free:
	FUNC3(new_mapping);
	return err;
}