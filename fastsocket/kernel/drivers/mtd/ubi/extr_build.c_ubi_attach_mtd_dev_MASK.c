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
struct TYPE_2__ {int priority; int /*<<< orphan*/  notifier_call; } ;
struct ubi_device {int ubi_num; int vid_hdr_offset; int autoresize_vol_id; int flash_size; int good_peb_count; int bad_peb_count; int vtbl_slots; int vol_count; int avail_pebs; int rsvd_pebs; int beb_rsvd_pebs; int image_seq; int thread_enabled; void* dbg_peb_buf; void* peb_buf2; void* peb_buf1; void* vtbl; TYPE_1__ reboot_notifier; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  bgt_thread; int /*<<< orphan*/  mean_ec; int /*<<< orphan*/  max_ec; int /*<<< orphan*/  bgt_name; int /*<<< orphan*/  peb_size; int /*<<< orphan*/  dbg_buf_mutex; int /*<<< orphan*/  volumes_lock; int /*<<< orphan*/  device_mutex; int /*<<< orphan*/  ckvol_mutex; int /*<<< orphan*/  buf_mutex; struct mtd_info* mtd; } ;
struct mtd_info {scalar_t__ index; scalar_t__ type; int name; } ;

/* Variables and functions */
 int CONFIG_MTD_UBI_WL_THRESHOLD ; 
 int /*<<< orphan*/  DBG_DISABLE_BGT ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENFILE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MTD_UBIVOLUME ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int UBI_DEV_NUM_AUTO ; 
 int UBI_INT_VOL_COUNT ; 
 int UBI_MAX_DEVICES ; 
 int /*<<< orphan*/  UBI_VOLUME_ADDED ; 
 int FUNC2 (struct ubi_device*) ; 
 int FUNC3 (struct ubi_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubi_device*) ; 
 int FUNC7 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct ubi_device*,int /*<<< orphan*/ ) ; 
 struct ubi_device* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct ubi_device** ubi_devices ; 
 int /*<<< orphan*/  FUNC16 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC18 (struct ubi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ubi_reboot_notifier ; 
 int /*<<< orphan*/  ubi_thread ; 
 int /*<<< orphan*/  FUNC19 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct ubi_device*) ; 
 int FUNC21 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC22 (void*) ; 
 void* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

int FUNC25(struct mtd_info *mtd, int ubi_num, int vid_hdr_offset)
{
	struct ubi_device *ubi;
	int i, err, do_free = 1;

	/*
	 * Check if we already have the same MTD device attached.
	 *
	 * Note, this function assumes that UBI devices creations and deletions
	 * are serialized, so it does not take the &ubi_devices_lock.
	 */
	for (i = 0; i < UBI_MAX_DEVICES; i++) {
		ubi = ubi_devices[i];
		if (ubi && mtd->index == ubi->mtd->index) {
			FUNC4("mtd%d is already attached to ubi%d",
				mtd->index, i);
			return -EEXIST;
		}
	}

	/*
	 * Make sure this MTD device is not emulated on top of an UBI volume
	 * already. Well, generally this recursion works fine, but there are
	 * different problems like the UBI module takes a reference to itself
	 * by attaching (and thus, opening) the emulated MTD device. This
	 * results in inability to unload the module. And in general it makes
	 * no sense to attach emulated MTD devices, so we prohibit this.
	 */
	if (mtd->type == MTD_UBIVOLUME) {
		FUNC16("refuse attaching mtd%d - it is already emulated on "
			"top of UBI", mtd->index);
		return -EINVAL;
	}

	if (ubi_num == UBI_DEV_NUM_AUTO) {
		/* Search for an empty slot in the @ubi_devices array */
		for (ubi_num = 0; ubi_num < UBI_MAX_DEVICES; ubi_num++)
			if (!ubi_devices[ubi_num])
				break;
		if (ubi_num == UBI_MAX_DEVICES) {
			FUNC4("only %d UBI devices may be created",
				UBI_MAX_DEVICES);
			return -ENFILE;
		}
	} else {
		if (ubi_num >= UBI_MAX_DEVICES)
			return -EINVAL;

		/* Make sure ubi_num is not busy */
		if (ubi_devices[ubi_num]) {
			FUNC4("ubi%d already exists", ubi_num);
			return -EEXIST;
		}
	}

	ubi = FUNC10(sizeof(struct ubi_device), GFP_KERNEL);
	if (!ubi)
		return -ENOMEM;

	ubi->mtd = mtd;
	ubi->ubi_num = ubi_num;
	ubi->vid_hdr_offset = vid_hdr_offset;
	ubi->autoresize_vol_id = -1;

	FUNC11(&ubi->buf_mutex);
	FUNC11(&ubi->ckvol_mutex);
	FUNC11(&ubi->device_mutex);
	FUNC14(&ubi->volumes_lock);

	FUNC17("attaching mtd%d to ubi%d", mtd->index, ubi_num);

	err = FUNC7(ubi);
	if (err)
		goto out_free;

	err = -ENOMEM;
	ubi->peb_buf1 = FUNC23(ubi->peb_size);
	if (!ubi->peb_buf1)
		goto out_free;

	ubi->peb_buf2 = FUNC23(ubi->peb_size);
	if (!ubi->peb_buf2)
		goto out_free;

#ifdef CONFIG_MTD_UBI_DEBUG_PARANOID
	mutex_init(&ubi->dbg_buf_mutex);
	ubi->dbg_peb_buf = vmalloc(ubi->peb_size);
	if (!ubi->dbg_peb_buf)
		goto out_free;
#endif

	err = FUNC2(ubi);
	if (err) {
		FUNC4("failed to attach by scanning, error %d", err);
		goto out_free;
	}

	if (ubi->autoresize_vol_id != -1) {
		err = FUNC3(ubi, ubi->autoresize_vol_id);
		if (err)
			goto out_detach;
	}

	err = FUNC21(ubi);
	if (err)
		goto out_nofree;

	ubi->bgt_thread = FUNC9(ubi_thread, ubi, ubi->bgt_name);
	if (FUNC0(ubi->bgt_thread)) {
		err = FUNC1(ubi->bgt_thread);
		FUNC16("cannot spawn \"%s\", error %d", ubi->bgt_name,
			err);
		goto out_uif;
	}

	FUNC17("attached mtd%d to ubi%d", mtd->index, ubi_num);
	FUNC17("MTD device name:            \"%s\"", mtd->name);
	FUNC17("MTD device size:            %llu MiB", ubi->flash_size >> 20);
	FUNC17("number of good PEBs:        %d", ubi->good_peb_count);
	FUNC17("number of bad PEBs:         %d", ubi->bad_peb_count);
	FUNC17("max. allowed volumes:       %d", ubi->vtbl_slots);
	FUNC17("wear-leveling threshold:    %d", CONFIG_MTD_UBI_WL_THRESHOLD);
	FUNC17("number of internal volumes: %d", UBI_INT_VOL_COUNT);
	FUNC17("number of user volumes:     %d",
		ubi->vol_count - UBI_INT_VOL_COUNT);
	FUNC17("available PEBs:             %d", ubi->avail_pebs);
	FUNC17("total number of reserved PEBs: %d", ubi->rsvd_pebs);
	FUNC17("number of PEBs reserved for bad PEB handling: %d",
		ubi->beb_rsvd_pebs);
	FUNC17("max/mean erase counter: %d/%d", ubi->max_ec, ubi->mean_ec);
	FUNC17("image sequence number: %d", ubi->image_seq);

	/*
	 * The below lock makes sure we do not race with 'ubi_thread()' which
	 * checks @ubi->thread_enabled. Otherwise we may fail to wake it up.
	 */
	FUNC13(&ubi->wl_lock);
	if (!DBG_DISABLE_BGT)
		ubi->thread_enabled = 1;
	FUNC24(ubi->bgt_thread);
	FUNC15(&ubi->wl_lock);

	/* Flash device priority is 0 - UBI needs to shut down first */
	ubi->reboot_notifier.priority = 1;
	ubi->reboot_notifier.notifier_call = ubi_reboot_notifier;
	FUNC12(&ubi->reboot_notifier);

	ubi_devices[ubi_num] = ubi;
	FUNC18(ubi, UBI_VOLUME_ADDED, NULL);
	return ubi_num;

out_uif:
	FUNC20(ubi);
out_nofree:
	do_free = 0;
out_detach:
	FUNC19(ubi);
	if (do_free)
		FUNC6(ubi);
	FUNC5(ubi);
	FUNC22(ubi->vtbl);
out_free:
	FUNC22(ubi->peb_buf1);
	FUNC22(ubi->peb_buf2);
#ifdef CONFIG_MTD_UBI_DEBUG_PARANOID
	vfree(ubi->dbg_peb_buf);
#endif
	FUNC8(ubi);
	return err;
}