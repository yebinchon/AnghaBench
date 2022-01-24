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
struct ubi_volume {scalar_t__ vol_type; int usable_leb_size; int used_ebs; int last_eb_bytes; } ;
struct ubi_device {struct ubi_volume** volumes; } ;

/* Variables and functions */
 int EBADMSG ; 
 int ENOMEM ; 
 scalar_t__ UBI_STATIC_VOLUME ; 
 int FUNC0 (struct ubi_device*,struct ubi_volume*,int,void*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int) ; 

int FUNC3(struct ubi_device *ubi, int vol_id)
{
	void *buf;
	int err = 0, i;
	struct ubi_volume *vol = ubi->volumes[vol_id];

	if (vol->vol_type != UBI_STATIC_VOLUME)
		return 0;

	buf = FUNC2(vol->usable_leb_size);
	if (!buf)
		return -ENOMEM;

	for (i = 0; i < vol->used_ebs; i++) {
		int size;

		if (i == vol->used_ebs - 1)
			size = vol->last_eb_bytes;
		else
			size = vol->usable_leb_size;

		err = FUNC0(ubi, vol, i, buf, 0, size, 1);
		if (err) {
			if (err == -EBADMSG)
				err = 1;
			break;
		}
	}

	FUNC1(buf);
	return err;
}