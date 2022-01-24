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
struct ubi_volume {int vol_id; int* eba_tbl; } ;
struct ubi_device {scalar_t__ ro_mode; } ;

/* Variables and functions */
 int EROFS ; 
 int UBI_LEB_UNMAPPED ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int FUNC1 (struct ubi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_device*,int,int) ; 
 int FUNC3 (struct ubi_device*,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct ubi_device *ubi, struct ubi_volume *vol,
		      int lnum)
{
	int err, pnum, vol_id = vol->vol_id;

	if (ubi->ro_mode)
		return -EROFS;

	err = FUNC1(ubi, vol_id, lnum);
	if (err)
		return err;

	pnum = vol->eba_tbl[lnum];
	if (pnum < 0)
		/* This logical eraseblock is already unmapped */
		goto out_unlock;

	FUNC0("erase LEB %d:%d, PEB %d", vol_id, lnum, pnum);

	vol->eba_tbl[lnum] = UBI_LEB_UNMAPPED;
	err = FUNC3(ubi, pnum, 0);

out_unlock:
	FUNC2(ubi, vol_id, lnum);
	return err;
}