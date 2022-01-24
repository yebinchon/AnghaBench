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
struct ubi_device {int ubi_num; int /*<<< orphan*/  dev; TYPE_1__* mtd; int /*<<< orphan*/  dbg_peb_buf; int /*<<< orphan*/  peb_buf2; int /*<<< orphan*/  peb_buf1; int /*<<< orphan*/  vtbl; scalar_t__ bgt_thread; int /*<<< orphan*/  reboot_notifier; scalar_t__ ref_count; int /*<<< orphan*/  ubi_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int UBI_MAX_DEVICES ; 
 int /*<<< orphan*/  UBI_VOLUME_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/ ** ubi_devices ; 
 int /*<<< orphan*/  ubi_devices_lock ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct ubi_device* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ubi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17(int ubi_num, int anyway)
{
	struct ubi_device *ubi;

	if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
		return -EINVAL;

	ubi = FUNC10(ubi_num);
	if (!ubi)
		return -EINVAL;

	FUNC6(&ubi_devices_lock);
	FUNC4(&ubi->dev);
	ubi->ref_count -= 1;
	if (ubi->ref_count) {
		if (!anyway) {
			FUNC7(&ubi_devices_lock);
			return -EBUSY;
		}
		/* This may only happen if there is a bug */
		FUNC9("%s reference count %d, destroy anyway",
			ubi->ubi_name, ubi->ref_count);
	}
	ubi_devices[ubi_num] = NULL;
	FUNC7(&ubi_devices_lock);

	FUNC8(ubi_num == ubi->ubi_num);
	FUNC12(ubi, UBI_VOLUME_REMOVED, NULL);
	FUNC0("detaching mtd%d from ubi%d", ubi->mtd->index, ubi_num);

	/*
	 * Before freeing anything, we have to stop the background thread to
	 * prevent it from doing anything on this device while we are freeing.
	 */
	FUNC15(&ubi->reboot_notifier);
	if (ubi->bgt_thread)
		FUNC3(ubi->bgt_thread);

	/*
	 * Get a reference to the device in order to prevent 'dev_release()'
	 * from freeing @ubi object.
	 */
	FUNC2(&ubi->dev);

	FUNC14(ubi);
	FUNC13(ubi);
	FUNC1(ubi);
	FUNC16(ubi->vtbl);
	FUNC5(ubi->mtd);
	FUNC16(ubi->peb_buf1);
	FUNC16(ubi->peb_buf2);
#ifdef CONFIG_MTD_UBI_DEBUG_PARANOID
	vfree(ubi->dbg_peb_buf);
#endif
	FUNC11("mtd%d is detached from ubi%d", ubi->mtd->index, ubi->ubi_num);
	FUNC4(&ubi->dev);
	return 0;
}