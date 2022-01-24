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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct ubi_device {int peb_size; TYPE_1__* mtd; } ;
struct erase_info {int addr; int len; unsigned long priv; scalar_t__ state; int /*<<< orphan*/  callback; TYPE_1__* mtd; } ;
typedef  int loff_t ;
struct TYPE_2__ {int (* erase ) (TYPE_1__*,struct erase_info*) ;} ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ MTD_ERASE_DONE ; 
 scalar_t__ MTD_ERASE_FAILED ; 
 int /*<<< orphan*/  UBI_IO_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  erase_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct erase_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_1__*,struct erase_info*) ; 
 int FUNC5 (struct ubi_device*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct ubi_device *ubi, int pnum)
{
	int err, retries = 0;
	struct erase_info ei;
	wait_queue_head_t wq;

	FUNC1("erase PEB %d", pnum);

retry:
	FUNC2(&wq);
	FUNC3(&ei, 0, sizeof(struct erase_info));

	ei.mtd      = ubi->mtd;
	ei.addr     = (loff_t)pnum * ubi->peb_size;
	ei.len      = ubi->peb_size;
	ei.callback = erase_callback;
	ei.priv     = (unsigned long)&wq;

	err = ubi->mtd->erase(ubi->mtd, &ei);
	if (err) {
		if (retries++ < UBI_IO_RETRIES) {
			FUNC1("error %d while erasing PEB %d, retry",
			       err, pnum);
			FUNC10();
			goto retry;
		}
		FUNC8("cannot erase PEB %d, error %d", pnum, err);
		FUNC6();
		return err;
	}

	err = FUNC9(wq, ei.state == MTD_ERASE_DONE ||
					   ei.state == MTD_ERASE_FAILED);
	if (err) {
		FUNC8("interrupted PEB %d erasure", pnum);
		return -EINTR;
	}

	if (ei.state == MTD_ERASE_FAILED) {
		if (retries++ < UBI_IO_RETRIES) {
			FUNC1("error while erasing PEB %d, retry", pnum);
			FUNC10();
			goto retry;
		}
		FUNC8("cannot erase PEB %d", pnum);
		FUNC6();
		return -EIO;
	}

	err = FUNC5(ubi, pnum, 0, ubi->peb_size);
	if (err)
		return err > 0 ? -EINVAL : err;

	if (FUNC7() && !err) {
		FUNC0("cannot erase PEB %d (emulated)", pnum);
		return -EIO;
	}

	return 0;
}