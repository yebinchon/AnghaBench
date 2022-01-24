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
struct ubi_volume_desc {int mode; struct ubi_volume* vol; } ;
struct ubi_volume {int exclusive; int readers; int writers; int ref_count; int checked; int corrupted; int /*<<< orphan*/  dev; } ;
struct ubi_device {int vtbl_slots; int /*<<< orphan*/  volumes_lock; int /*<<< orphan*/  ckvol_mutex; int /*<<< orphan*/  ubi_num; struct ubi_volume** volumes; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct ubi_volume_desc* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
#define  UBI_EXCLUSIVE 130 
 int UBI_MAX_DEVICES ; 
#define  UBI_READONLY 129 
#define  UBI_READWRITE 128 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_volume_desc*) ; 
 struct ubi_volume_desc* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ubi_device*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ubi_volume_desc*) ; 
 struct ubi_device* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,int /*<<< orphan*/ ) ; 

struct ubi_volume_desc *FUNC17(int ubi_num, int vol_id, int mode)
{
	int err;
	struct ubi_volume_desc *desc;
	struct ubi_device *ubi;
	struct ubi_volume *vol;

	FUNC2("open device %d, volume %d, mode %d", ubi_num, vol_id, mode);

	if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
		return FUNC0(-EINVAL);

	if (mode != UBI_READONLY && mode != UBI_READWRITE &&
	    mode != UBI_EXCLUSIVE)
		return FUNC0(-EINVAL);

	/*
	 * First of all, we have to get the UBI device to prevent its removal.
	 */
	ubi = FUNC14(ubi_num);
	if (!ubi)
		return FUNC0(-ENODEV);

	if (vol_id < 0 || vol_id >= ubi->vtbl_slots) {
		err = -EINVAL;
		goto out_put_ubi;
	}

	desc = FUNC5(sizeof(struct ubi_volume_desc), GFP_KERNEL);
	if (!desc) {
		err = -ENOMEM;
		goto out_put_ubi;
	}

	err = -ENODEV;
	if (!FUNC11(THIS_MODULE))
		goto out_free;

	FUNC9(&ubi->volumes_lock);
	vol = ubi->volumes[vol_id];
	if (!vol)
		goto out_unlock;

	err = -EBUSY;
	switch (mode) {
	case UBI_READONLY:
		if (vol->exclusive)
			goto out_unlock;
		vol->readers += 1;
		break;

	case UBI_READWRITE:
		if (vol->exclusive || vol->writers > 0)
			goto out_unlock;
		vol->writers += 1;
		break;

	case UBI_EXCLUSIVE:
		if (vol->exclusive || vol->writers || vol->readers)
			goto out_unlock;
		vol->exclusive = 1;
		break;
	}
	FUNC3(&vol->dev);
	vol->ref_count += 1;
	FUNC10(&ubi->volumes_lock);

	desc->vol = vol;
	desc->mode = mode;

	FUNC7(&ubi->ckvol_mutex);
	if (!vol->checked) {
		/* This is the first open - check the volume */
		err = FUNC12(ubi, vol_id);
		if (err < 0) {
			FUNC8(&ubi->ckvol_mutex);
			FUNC13(desc);
			return FUNC0(err);
		}
		if (err == 1) {
			FUNC16("volume %d on UBI device %d is corrupted",
				 vol_id, ubi->ubi_num);
			vol->corrupted = 1;
		}
		vol->checked = 1;
	}
	FUNC8(&ubi->ckvol_mutex);

	return desc;

out_unlock:
	FUNC10(&ubi->volumes_lock);
	FUNC6(THIS_MODULE);
out_free:
	FUNC4(desc);
out_put_ubi:
	FUNC15(ubi);
	FUNC1("cannot open device %d, volume %d, error %d",
		ubi_num, vol_id, err);
	return FUNC0(err);
}