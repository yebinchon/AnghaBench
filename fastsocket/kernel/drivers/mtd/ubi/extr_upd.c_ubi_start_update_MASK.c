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
struct ubi_volume {int updating; int reserved_pebs; long long upd_bytes; scalar_t__ upd_received; scalar_t__ usable_leb_size; int /*<<< orphan*/  upd_ebs; int /*<<< orphan*/  upd_buf; int /*<<< orphan*/  changing_leb; int /*<<< orphan*/  vol_id; } ;
struct ubi_device {int /*<<< orphan*/  leb_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct ubi_device*,struct ubi_volume*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int FUNC3 (struct ubi_device*,struct ubi_volume*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ubi_device*,struct ubi_volume*,int) ; 
 int FUNC6 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct ubi_device *ubi, struct ubi_volume *vol,
		     long long bytes)
{
	int i, err;

	FUNC1("start update of volume %d, %llu bytes", vol->vol_id, bytes);
	FUNC4(!vol->updating && !vol->changing_leb);
	vol->updating = 1;

	err = FUNC3(ubi, vol);
	if (err)
		return err;

	/* Before updating - wipe out the volume */
	for (i = 0; i < vol->reserved_pebs; i++) {
		err = FUNC5(ubi, vol, i);
		if (err)
			return err;
	}

	if (bytes == 0) {
		err = FUNC6(ubi);
		if (err)
			return err;

		err = FUNC0(ubi, vol, 0);
		if (err)
			return err;
		vol->updating = 0;
		return 0;
	}

	vol->upd_buf = FUNC7(ubi->leb_size);
	if (!vol->upd_buf)
		return -ENOMEM;

	vol->upd_ebs = FUNC2(bytes + vol->usable_leb_size - 1,
			       vol->usable_leb_size);
	vol->upd_bytes = bytes;
	vol->upd_received = 0;
	return 0;
}