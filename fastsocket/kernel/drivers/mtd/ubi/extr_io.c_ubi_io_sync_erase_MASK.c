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
struct ubi_device {int peb_count; scalar_t__ nor_flash; scalar_t__ ro_mode; } ;

/* Variables and functions */
 int EINVAL ; 
 int EROFS ; 
 int FUNC0 (struct ubi_device*,int) ; 
 int FUNC1 (struct ubi_device*,int) ; 
 int FUNC2 (struct ubi_device*,int) ; 
 int FUNC3 (struct ubi_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(struct ubi_device *ubi, int pnum, int torture)
{
	int err, ret = 0;

	FUNC4(pnum >= 0 && pnum < ubi->peb_count);

	err = FUNC2(ubi, pnum);
	if (err != 0)
		return err > 0 ? -EINVAL : err;

	if (ubi->ro_mode) {
		FUNC5("read-only mode");
		return -EROFS;
	}

	if (ubi->nor_flash) {
		err = FUNC1(ubi, pnum);
		if (err)
			return err;
	}

	if (torture) {
		ret = FUNC3(ubi, pnum);
		if (ret < 0)
			return ret;
	}

	err = FUNC0(ubi, pnum);
	if (err)
		return err;

	return ret + 1;
}