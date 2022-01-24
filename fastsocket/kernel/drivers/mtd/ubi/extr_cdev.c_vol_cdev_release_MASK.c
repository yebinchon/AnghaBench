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
struct ubi_volume_desc {int /*<<< orphan*/  mode; struct ubi_volume* vol; } ;
struct ubi_volume {int /*<<< orphan*/  upd_buf; scalar_t__ changing_leb; int /*<<< orphan*/  vol_id; TYPE_1__* ubi; int /*<<< orphan*/  upd_bytes; int /*<<< orphan*/  upd_received; scalar_t__ updating; } ;
struct inode {int dummy; } ;
struct file {struct ubi_volume_desc* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  ubi_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_volume_desc*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct ubi_volume_desc *desc = file->private_data;
	struct ubi_volume *vol = desc->vol;

	FUNC0("release device %d, volume %d, mode %d",
		vol->ubi->ubi_num, vol->vol_id, desc->mode);

	if (vol->updating) {
		FUNC3("update of volume %d not finished, volume is damaged",
			 vol->vol_id);
		FUNC1(!vol->changing_leb);
		vol->updating = 0;
		FUNC4(vol->upd_buf);
	} else if (vol->changing_leb) {
		FUNC0("only %lld of %lld bytes received for atomic LEB change"
			" for volume %d:%d, cancel", vol->upd_received,
			vol->upd_bytes, vol->ubi->ubi_num, vol->vol_id);
		vol->changing_leb = 0;
		FUNC4(vol->upd_buf);
	}

	FUNC2(desc);
	return 0;
}